FROM python:3.10-slim

# 不生成 pyc，日志实时输出
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# 先复制依赖文件
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# 再复制源码
COPY main.py ./

EXPOSE 5000

CMD ["python", "main.py"]

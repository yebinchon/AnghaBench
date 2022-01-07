
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_audit_buf {scalar_t__ valid; scalar_t__ icanon; int dev; int mutex; void* data; } ;


 int GFP_KERNEL ;
 int MKDEV (int ,int ) ;
 int N_TTY_BUF_SIZE ;
 int kfree (struct tty_audit_buf*) ;
 void* kmalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct tty_audit_buf *tty_audit_buf_alloc(void)
{
 struct tty_audit_buf *buf;

 buf = kmalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  goto err;
 buf->data = kmalloc(N_TTY_BUF_SIZE, GFP_KERNEL);
 if (!buf->data)
  goto err_buf;
 mutex_init(&buf->mutex);
 buf->dev = MKDEV(0, 0);
 buf->icanon = 0;
 buf->valid = 0;
 return buf;

err_buf:
 kfree(buf);
err:
 return ((void*)0);
}

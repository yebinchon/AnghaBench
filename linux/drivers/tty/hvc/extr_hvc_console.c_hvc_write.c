
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hvc_struct* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct hvc_struct {int outbuf_size; int n_outbuf; int outbuf; int lock; TYPE_1__ port; } ;


 int EIO ;
 int EPIPE ;
 int cond_resched () ;
 int hvc_flush (struct hvc_struct*) ;
 int hvc_kick () ;
 int hvc_push (struct hvc_struct*) ;
 int memcpy (int,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hvc_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 struct hvc_struct *hp = tty->driver_data;
 unsigned long flags;
 int rsize, written = 0;


 if (!hp)
  return -EPIPE;


 if (hp->port.count <= 0)
  return -EIO;

 while (count > 0) {
  int ret = 0;

  spin_lock_irqsave(&hp->lock, flags);

  rsize = hp->outbuf_size - hp->n_outbuf;

  if (rsize) {
   if (rsize > count)
    rsize = count;
   memcpy(hp->outbuf + hp->n_outbuf, buf, rsize);
   count -= rsize;
   buf += rsize;
   hp->n_outbuf += rsize;
   written += rsize;
  }

  if (hp->n_outbuf > 0)
   ret = hvc_push(hp);

  spin_unlock_irqrestore(&hp->lock, flags);

  if (!ret)
   break;

  if (count) {
   if (hp->n_outbuf > 0)
    hvc_flush(hp);
   cond_resched();
  }
 }




 if (hp->n_outbuf)
  hvc_kick();

 return written;
}

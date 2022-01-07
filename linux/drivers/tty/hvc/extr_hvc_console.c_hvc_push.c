
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hvc_struct {int n_outbuf; int do_wakeup; int outbuf; int vtermno; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* put_chars ) (int ,int ,int) ;} ;


 int EAGAIN ;
 int memmove (int ,int ,int) ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static int hvc_push(struct hvc_struct *hp)
{
 int n;

 n = hp->ops->put_chars(hp->vtermno, hp->outbuf, hp->n_outbuf);
 if (n <= 0) {
  if (n == 0 || n == -EAGAIN) {
   hp->do_wakeup = 1;
   return 0;
  }


  hp->n_outbuf = 0;
 } else
  hp->n_outbuf -= n;
 if (hp->n_outbuf > 0)
  memmove(hp->outbuf, hp->outbuf + n, hp->n_outbuf);
 else
  hp->do_wakeup = 1;

 return n;
}

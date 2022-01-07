
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {int length; int zero; void (* done ) (struct usbhs_priv*,struct usbhs_pkt*) ;int sequence; scalar_t__ actual; int * handler; void* buf; struct usbhs_pipe* pipe; int node; } ;
struct usbhs_pipe {int * handler; int list; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int list_move_tail (int *,int *) ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 int usbhsf_null_handler ;

void usbhs_pkt_push(struct usbhs_pipe *pipe, struct usbhs_pkt *pkt,
      void (*done)(struct usbhs_priv *priv,
     struct usbhs_pkt *pkt),
      void *buf, int len, int zero, int sequence)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct device *dev = usbhs_priv_to_dev(priv);
 unsigned long flags;

 if (!done) {
  dev_err(dev, "no done function\n");
  return;
 }


 usbhs_lock(priv, flags);

 if (!pipe->handler) {
  dev_err(dev, "no handler function\n");
  pipe->handler = &usbhsf_null_handler;
 }

 list_move_tail(&pkt->node, &pipe->list);






 pkt->pipe = pipe;
 pkt->buf = buf;
 pkt->handler = pipe->handler;
 pkt->length = len;
 pkt->zero = zero;
 pkt->actual = 0;
 pkt->done = done;
 pkt->sequence = sequence;

 usbhs_unlock(priv, flags);

}

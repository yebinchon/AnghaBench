
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_qh {int dummy; } ;
struct musb_hw_ep {struct musb_qh* out_qh; scalar_t__ is_shared_fifo; struct musb_qh* in_qh; } ;



__attribute__((used)) static void musb_ep_set_qh(struct musb_hw_ep *ep, int is_in, struct musb_qh *qh)
{
 if (is_in != 0 || ep->is_shared_fifo)
  ep->in_qh = qh;
 if (is_in == 0 || ep->is_shared_fifo)
  ep->out_qh = qh;
}

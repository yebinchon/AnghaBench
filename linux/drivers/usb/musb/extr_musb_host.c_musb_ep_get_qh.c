
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_qh {int dummy; } ;
struct musb_hw_ep {struct musb_qh* out_qh; struct musb_qh* in_qh; } ;



__attribute__((used)) static struct musb_qh *musb_ep_get_qh(struct musb_hw_ep *ep, int is_in)
{
 return is_in ? ep->in_qh : ep->out_qh;
}

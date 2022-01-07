
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int qh_pool; int td_pool; int gadget; int * roles; } ;


 size_t CI_ROLE_GADGET ;
 int destroy_eps (struct ci_hdrc*) ;
 int dma_pool_destroy (int ) ;
 int usb_del_gadget_udc (int *) ;

void ci_hdrc_gadget_destroy(struct ci_hdrc *ci)
{
 if (!ci->roles[CI_ROLE_GADGET])
  return;

 usb_del_gadget_udc(&ci->gadget);

 destroy_eps(ci);

 dma_pool_destroy(ci->td_pool);
 dma_pool_destroy(ci->qh_pool);
}

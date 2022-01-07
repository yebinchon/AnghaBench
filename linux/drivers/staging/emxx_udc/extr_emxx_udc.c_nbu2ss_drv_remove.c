
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nbu2ss_udc {struct nbu2ss_ep* ep; } ;
struct nbu2ss_ep {int phys_buf; scalar_t__ virt_buf; } ;


 int NUM_ENDPOINTS ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,void*,int ) ;
 int free_irq (int ,struct nbu2ss_udc*) ;
 struct nbu2ss_udc udc_controller ;
 int vbus_irq ;

__attribute__((used)) static int nbu2ss_drv_remove(struct platform_device *pdev)
{
 struct nbu2ss_udc *udc;
 struct nbu2ss_ep *ep;
 int i;

 udc = &udc_controller;

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  ep = &udc->ep[i];
  if (ep->virt_buf)
   dma_free_coherent(((void*)0), PAGE_SIZE, (void *)ep->virt_buf,
       ep->phys_buf);
 }


 free_irq(vbus_irq, udc);

 return 0;
}

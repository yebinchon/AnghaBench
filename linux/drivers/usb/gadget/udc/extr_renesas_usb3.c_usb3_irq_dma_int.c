
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {TYPE_1__* dma; } ;
struct renesas_usb3 {int num_usb3_eps; } ;
struct TYPE_2__ {int num; } ;


 int AXI_INT_PRDEN_CLR_STA (int ) ;
 int DMA_INT (int) ;
 int USB3_AXI_INT_STA ;
 int usb3_dma_try_stop (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 struct renesas_usb3_ep* usb3_get_ep (struct renesas_usb3*,int) ;
 struct renesas_usb3_request* usb3_get_request (struct renesas_usb3_ep*) ;
 int usb3_read (struct renesas_usb3*,int ) ;
 int usb3_request_done_pipen (struct renesas_usb3*,struct renesas_usb3_ep*,struct renesas_usb3_request*,int) ;

__attribute__((used)) static void usb3_irq_dma_int(struct renesas_usb3 *usb3, u32 dma_sta)
{
 struct renesas_usb3_ep *usb3_ep;
 struct renesas_usb3_request *usb3_req;
 int i, status;

 for (i = 0; i < usb3->num_usb3_eps; i++) {
  if (!(dma_sta & DMA_INT(i)))
   continue;

  usb3_ep = usb3_get_ep(usb3, i);
  if (!(usb3_read(usb3, USB3_AXI_INT_STA) &
      AXI_INT_PRDEN_CLR_STA(usb3_ep->dma->num)))
   continue;

  usb3_req = usb3_get_request(usb3_ep);
  status = usb3_dma_try_stop(usb3_ep, usb3_req);
  usb3_request_done_pipen(usb3, usb3_ep, usb3_req, status);
 }
}

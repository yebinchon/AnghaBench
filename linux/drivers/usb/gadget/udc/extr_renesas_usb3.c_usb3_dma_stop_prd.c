
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3_ep {int num; struct renesas_usb3_dma* dma; } ;
struct renesas_usb3_dma {int num; } ;
struct renesas_usb3 {int dummy; } ;


 int USB3_DMA_CH0_CON (int ) ;
 int usb3_disable_dma_irq (struct renesas_usb3*,int ) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_write (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_dma_stop_prd(struct renesas_usb3_ep *usb3_ep)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 struct renesas_usb3_dma *dma = usb3_ep->dma;

 usb3_disable_dma_irq(usb3, usb3_ep->num);
 usb3_write(usb3, 0, USB3_DMA_CH0_CON(dma->num));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct qe_udc {int usb_regs; int rx_tasklet; int usb_irq; TYPE_3__ gadget; struct qe_ep* eps; void* nullp; scalar_t__ nullmap; int * done; } ;
struct TYPE_4__ {int maxpacket; } ;
struct qe_ep {int txframe; int rxbuffer; void* rxbuf_d; scalar_t__ rxbufmap; int rxframe; TYPE_1__ ep; int rxbase; } ;
struct platform_device {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 void* DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int USB_BDRING_LEN ;
 int USB_CRC_SIZE ;
 int cpm_muram_free (int ) ;
 int cpm_muram_offset (int ) ;
 int dma_sync_single_for_cpu (int ,void*,unsigned int,int ) ;
 int dma_unmap_single (int ,void*,unsigned int,int ) ;
 int done ;
 int free_irq (int ,struct qe_udc*) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (int ) ;
 struct qe_udc* platform_get_drvdata (struct platform_device*) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;
 int usb_del_gadget_udc (TYPE_3__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int qe_udc_remove(struct platform_device *ofdev)
{
 struct qe_udc *udc = platform_get_drvdata(ofdev);
 struct qe_ep *ep;
 unsigned int size;
 DECLARE_COMPLETION_ONSTACK(done);

 usb_del_gadget_udc(&udc->gadget);

 udc->done = &done;
 tasklet_disable(&udc->rx_tasklet);

 if (udc->nullmap) {
  dma_unmap_single(udc->gadget.dev.parent,
   udc->nullp, 256,
    DMA_TO_DEVICE);
   udc->nullp = DMA_ADDR_INVALID;
 } else {
  dma_sync_single_for_cpu(udc->gadget.dev.parent,
   udc->nullp, 256,
    DMA_TO_DEVICE);
 }

 ep = &udc->eps[0];
 cpm_muram_free(cpm_muram_offset(ep->rxbase));
 size = (ep->ep.maxpacket + USB_CRC_SIZE + 2) * (USB_BDRING_LEN + 1);

 kfree(ep->rxframe);
 if (ep->rxbufmap) {
  dma_unmap_single(udc->gadget.dev.parent,
    ep->rxbuf_d, size,
    DMA_FROM_DEVICE);
  ep->rxbuf_d = DMA_ADDR_INVALID;
 } else {
  dma_sync_single_for_cpu(udc->gadget.dev.parent,
    ep->rxbuf_d, size,
    DMA_FROM_DEVICE);
 }

 kfree(ep->rxbuffer);
 kfree(ep->txframe);

 free_irq(udc->usb_irq, udc);
 irq_dispose_mapping(udc->usb_irq);

 tasklet_kill(&udc->rx_tasklet);

 iounmap(udc->usb_regs);


 wait_for_completion(&done);

 return 0;
}

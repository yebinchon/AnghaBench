
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sysdev; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_flags; int setup_packet; int setup_dma; TYPE_2__* dev; } ;
struct TYPE_4__ {int bus; } ;


 int CONFIG_HAS_DMA ;
 int DMA_TO_DEVICE ;
 scalar_t__ IS_ENABLED (int ) ;
 int URB_SETUP_MAP_LOCAL ;
 int URB_SETUP_MAP_SINGLE ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int hcd_free_coherent (int ,int *,void**,int,int ) ;

void usb_hcd_unmap_urb_setup_for_dma(struct usb_hcd *hcd, struct urb *urb)
{
 if (IS_ENABLED(CONFIG_HAS_DMA) &&
     (urb->transfer_flags & URB_SETUP_MAP_SINGLE))
  dma_unmap_single(hcd->self.sysdev,
    urb->setup_dma,
    sizeof(struct usb_ctrlrequest),
    DMA_TO_DEVICE);
 else if (urb->transfer_flags & URB_SETUP_MAP_LOCAL)
  hcd_free_coherent(urb->dev->bus,
    &urb->setup_dma,
    (void **) &urb->setup_packet,
    sizeof(struct usb_ctrlrequest),
    DMA_TO_DEVICE);


 urb->transfer_flags &= ~(URB_SETUP_MAP_SINGLE | URB_SETUP_MAP_LOCAL);
}

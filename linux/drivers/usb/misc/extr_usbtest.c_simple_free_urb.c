
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; scalar_t__ transfer_buffer; scalar_t__ transfer_dma; scalar_t__ transfer_buffer_length; int dev; } ;


 int URB_NO_TRANSFER_DMA_MAP ;
 unsigned long buffer_offset (scalar_t__) ;
 int kfree (scalar_t__) ;
 int usb_free_coherent (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void simple_free_urb(struct urb *urb)
{
 unsigned long offset = buffer_offset(urb->transfer_buffer);

 if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
  usb_free_coherent(
   urb->dev,
   urb->transfer_buffer_length + offset,
   urb->transfer_buffer - offset,
   urb->transfer_dma - offset);
 else
  kfree(urb->transfer_buffer - offset);
 usb_free_urb(urb);
}

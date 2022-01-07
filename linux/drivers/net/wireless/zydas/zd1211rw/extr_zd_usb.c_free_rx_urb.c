
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; } ;


 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void free_rx_urb(struct urb *urb)
{
 if (!urb)
  return;
 usb_free_coherent(urb->dev, urb->transfer_buffer_length,
     urb->transfer_buffer, urb->transfer_dma);
 usb_free_urb(urb);
}

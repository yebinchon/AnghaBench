
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_pcwd_private {int intr_dma; int * intr_buffer; int intr_size; int udev; int intr_urb; } ;


 int kfree (struct usb_pcwd_private*) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static inline void usb_pcwd_delete(struct usb_pcwd_private *usb_pcwd)
{
 usb_free_urb(usb_pcwd->intr_urb);
 if (usb_pcwd->intr_buffer != ((void*)0))
  usb_free_coherent(usb_pcwd->udev, usb_pcwd->intr_size,
      usb_pcwd->intr_buffer, usb_pcwd->intr_dma);
 kfree(usb_pcwd);
}

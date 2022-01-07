
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
typedef int u8 ;
struct usb_device {scalar_t__ speed; } ;
struct urb {int interval; unsigned int transfer_flags; unsigned int transfer_buffer; int pipe; int transfer_dma; } ;


 int GFP_KERNEL ;
 int GUARD_BYTE ;
 int INTERRUPT_RATE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 unsigned int URB_SHORT_NOT_OK ;
 scalar_t__ USB_SPEED_HIGH ;
 unsigned int kmalloc (unsigned int,int ) ;
 int memset (unsigned int,int ,unsigned long) ;
 unsigned int usb_alloc_coherent (struct usb_device*,unsigned int,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int,int *,unsigned long,int ,int *) ;
 int usb_fill_int_urb (struct urb*,struct usb_device*,int,int *,unsigned long,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 scalar_t__ usb_pipein (int) ;

__attribute__((used)) static struct urb *usbtest_alloc_urb(
 struct usb_device *udev,
 int pipe,
 unsigned long bytes,
 unsigned transfer_flags,
 unsigned offset,
 u8 bInterval,
 usb_complete_t complete_fn)
{
 struct urb *urb;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return urb;

 if (bInterval)
  usb_fill_int_urb(urb, udev, pipe, ((void*)0), bytes, complete_fn,
    ((void*)0), bInterval);
 else
  usb_fill_bulk_urb(urb, udev, pipe, ((void*)0), bytes, complete_fn,
    ((void*)0));

 urb->interval = (udev->speed == USB_SPEED_HIGH)
   ? (INTERRUPT_RATE << 3)
   : INTERRUPT_RATE;
 urb->transfer_flags = transfer_flags;
 if (usb_pipein(pipe))
  urb->transfer_flags |= URB_SHORT_NOT_OK;

 if ((bytes + offset) == 0)
  return urb;

 if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
  urb->transfer_buffer = usb_alloc_coherent(udev, bytes + offset,
   GFP_KERNEL, &urb->transfer_dma);
 else
  urb->transfer_buffer = kmalloc(bytes + offset, GFP_KERNEL);

 if (!urb->transfer_buffer) {
  usb_free_urb(urb);
  return ((void*)0);
 }



 if (offset) {
  memset(urb->transfer_buffer, GUARD_BYTE, offset);
  urb->transfer_buffer += offset;
  if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
   urb->transfer_dma += offset;
 }



 memset(urb->transfer_buffer,
   usb_pipein(urb->pipe) ? GUARD_BYTE : 0,
   bytes);
 return urb;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;


 int URB_NO_TRANSFER_DMA_MAP ;
 int simple_callback ;
 struct urb* usbtest_alloc_urb (struct usb_device*,int,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static struct urb *simple_alloc_urb(
 struct usb_device *udev,
 int pipe,
 unsigned long bytes,
 u8 bInterval)
{
 return usbtest_alloc_urb(udev, pipe, bytes, URB_NO_TRANSFER_DMA_MAP, 0,
   bInterval, simple_callback);
}

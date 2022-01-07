
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_onetouch {int data_dma; int data; int udev; int irq; int dev; } ;


 int ONETOUCH_PKT_LEN ;
 int input_unregister_device (int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void onetouch_release_input(void *onetouch_)
{
 struct usb_onetouch *onetouch = (struct usb_onetouch *) onetouch_;

 if (onetouch) {
  usb_kill_urb(onetouch->irq);
  input_unregister_device(onetouch->dev);
  usb_free_urb(onetouch->irq);
  usb_free_coherent(onetouch->udev, ONETOUCH_PKT_LEN,
      onetouch->data, onetouch->data_dma);
 }
}

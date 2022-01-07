
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int ep; int dev; } ;


 int ECONNRESET ;
 int EIDRM ;
 int EINVAL ;
 int ENODEV ;
 int usb_hcd_unlink_urb (struct urb*,int ) ;

int usb_unlink_urb(struct urb *urb)
{
 if (!urb)
  return -EINVAL;
 if (!urb->dev)
  return -ENODEV;
 if (!urb->ep)
  return -EIDRM;
 return usb_hcd_unlink_urb(urb, -ECONNRESET);
}

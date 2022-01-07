
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; scalar_t__ context; } ;
struct stub_priv {struct stub_device* sdev; } ;
struct stub_device {int udev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 scalar_t__ usb_lock_device_for_reset (int ,int *) ;
 int usb_reset_device (int ) ;
 int usb_unlock_device (int ) ;

__attribute__((used)) static int tweak_reset_device_cmd(struct urb *urb)
{
 struct stub_priv *priv = (struct stub_priv *) urb->context;
 struct stub_device *sdev = priv->sdev;

 dev_info(&urb->dev->dev, "usb_queue_reset_device\n");

 if (usb_lock_device_for_reset(sdev->udev, ((void*)0)) < 0) {
  dev_err(&urb->dev->dev, "could not obtain lock to reset device\n");
  return 0;
 }
 usb_reset_device(sdev->udev);
 usb_unlock_device(sdev->udev);

 return 0;
}

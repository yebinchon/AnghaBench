
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int wValue; } ;
struct urb {scalar_t__ setup_packet; scalar_t__ context; } ;
struct stub_priv {struct stub_device* sdev; } ;
struct stub_device {TYPE_1__* udev; } ;
typedef int __u16 ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,int ,int) ;
 int le16_to_cpu (int ) ;
 int usb_set_configuration (TYPE_1__*,int ) ;

__attribute__((used)) static int tweak_set_configuration_cmd(struct urb *urb)
{
 struct stub_priv *priv = (struct stub_priv *) urb->context;
 struct stub_device *sdev = priv->sdev;
 struct usb_ctrlrequest *req;
 __u16 config;
 int err;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 config = le16_to_cpu(req->wValue);

 err = usb_set_configuration(sdev->udev, config);
 if (err && err != -ENODEV)
  dev_err(&sdev->udev->dev, "can't set config #%d, error %d\n",
   config, err);
 return 0;
}

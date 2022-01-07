
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct usb_interface {int dev; TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct tty_dev {int usb_state; struct usb_interface* intf; struct tty_dev* tty_dev; int send_control; int recv_func; int send_func; void* priv_dev; struct usb_interface* control_intf; struct usb_device* usbdev; } ;
struct mux_dev {int usb_state; struct usb_interface* intf; struct mux_dev* tty_dev; int send_control; int recv_func; int send_func; void* priv_dev; struct usb_interface* control_intf; struct usb_device* usbdev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PM_NORMAL ;
 int TTY_MAX_COUNT ;
 int __le16_to_cpu (int ) ;
 int gdm_mux_recv ;
 int gdm_mux_send ;
 int gdm_mux_send_control ;
 int init_usb (struct tty_dev*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct tty_dev*) ;
 struct tty_dev* kzalloc (int,int ) ;
 int pr_info (char*,int ,int ) ;
 int register_lte_tty_device (struct tty_dev*,int *) ;
 int release_usb (struct tty_dev*) ;
 int unregister_lte_tty_device (struct tty_dev*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct tty_dev*) ;

__attribute__((used)) static int gdm_mux_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct mux_dev *mux_dev;
 struct tty_dev *tty_dev;
 u16 idVendor, idProduct;
 int bInterfaceNumber;
 int ret;
 int i;
 struct usb_device *usbdev = interface_to_usbdev(intf);

 bInterfaceNumber = intf->cur_altsetting->desc.bInterfaceNumber;

 idVendor = __le16_to_cpu(usbdev->descriptor.idVendor);
 idProduct = __le16_to_cpu(usbdev->descriptor.idProduct);

 pr_info("mux vid = 0x%04x pid = 0x%04x\n", idVendor, idProduct);

 if (bInterfaceNumber != 2)
  return -ENODEV;

 mux_dev = kzalloc(sizeof(*mux_dev), GFP_KERNEL);
 if (!mux_dev)
  return -ENOMEM;

 tty_dev = kzalloc(sizeof(*tty_dev), GFP_KERNEL);
 if (!tty_dev) {
  ret = -ENOMEM;
  goto err_free_mux;
 }

 mux_dev->usbdev = usbdev;
 mux_dev->control_intf = intf;

 ret = init_usb(mux_dev);
 if (ret)
  goto err_free_usb;

 tty_dev->priv_dev = (void *)mux_dev;
 tty_dev->send_func = gdm_mux_send;
 tty_dev->recv_func = gdm_mux_recv;
 tty_dev->send_control = gdm_mux_send_control;

 ret = register_lte_tty_device(tty_dev, &intf->dev);
 if (ret)
  goto err_unregister_tty;

 for (i = 0; i < TTY_MAX_COUNT; i++)
  mux_dev->tty_dev = tty_dev;

 mux_dev->intf = intf;
 mux_dev->usb_state = PM_NORMAL;

 usb_get_dev(usbdev);
 usb_set_intfdata(intf, tty_dev);

 return 0;

err_unregister_tty:
 unregister_lte_tty_device(tty_dev);
err_free_usb:
 release_usb(mux_dev);
 kfree(tty_dev);
err_free_mux:
 kfree(mux_dev);

 return ret;
}

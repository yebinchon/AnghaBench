
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int dev; int portnum; int parent; int devnum; TYPE_2__* bus; TYPE_1__ descriptor; } ;
struct usb_dev_state {int dummy; } ;
struct stub_device {int dummy; } ;
struct bus_id_priv {char status; int busid_lock; struct stub_device* sdev; struct usb_device* udev; scalar_t__ shutdown_busid; } ;
struct TYPE_4__ {int busnum; int bus_name; } ;


 int ENODEV ;
 int ENOMEM ;
 char STUB_BUSID_ALLOC ;
 char STUB_BUSID_OTHER ;
 char STUB_BUSID_REMOV ;
 scalar_t__ USB_CLASS_HUB ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,char const*,...) ;
 char* dev_name (int *) ;
 int dev_set_drvdata (int *,struct stub_device*) ;
 struct bus_id_priv* get_busid_priv (char const*) ;
 int put_busid_priv (struct bus_id_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,char*) ;
 struct stub_device* stub_device_alloc (struct usb_device*) ;
 int stub_device_free (struct stub_device*) ;
 int usb_hub_claim_port (int ,int ,struct usb_dev_state*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static int stub_probe(struct usb_device *udev)
{
 struct stub_device *sdev = ((void*)0);
 const char *udev_busid = dev_name(&udev->dev);
 struct bus_id_priv *busid_priv;
 int rc = 0;
 char save_status;

 dev_dbg(&udev->dev, "Enter probe\n");




 sdev = stub_device_alloc(udev);
 if (!sdev)
  return -ENOMEM;


 busid_priv = get_busid_priv(udev_busid);
 if (!busid_priv || (busid_priv->status == STUB_BUSID_REMOV) ||
     (busid_priv->status == STUB_BUSID_OTHER)) {
  dev_info(&udev->dev,
   "%s is not in match_busid table... skip!\n",
   udev_busid);






  rc = -ENODEV;
  if (!busid_priv)
   goto sdev_free;

  goto call_put_busid_priv;
 }

 if (udev->descriptor.bDeviceClass == USB_CLASS_HUB) {
  dev_dbg(&udev->dev, "%s is a usb hub device... skip!\n",
    udev_busid);
  rc = -ENODEV;
  goto call_put_busid_priv;
 }

 if (!strcmp(udev->bus->bus_name, "vhci_hcd")) {
  dev_dbg(&udev->dev,
   "%s is attached on vhci_hcd... skip!\n",
   udev_busid);

  rc = -ENODEV;
  goto call_put_busid_priv;
 }


 dev_info(&udev->dev,
  "usbip-host: register new device (bus %u dev %u)\n",
  udev->bus->busnum, udev->devnum);

 busid_priv->shutdown_busid = 0;


 dev_set_drvdata(&udev->dev, sdev);

 busid_priv->sdev = sdev;
 busid_priv->udev = udev;

 save_status = busid_priv->status;
 busid_priv->status = STUB_BUSID_ALLOC;


 put_busid_priv(busid_priv);






 rc = usb_hub_claim_port(udev->parent, udev->portnum,
   (struct usb_dev_state *) udev);
 if (rc) {
  dev_dbg(&udev->dev, "unable to claim port\n");
  goto err_port;
 }

 return 0;

err_port:
 dev_set_drvdata(&udev->dev, ((void*)0));
 usb_put_dev(udev);


 spin_lock(&busid_priv->busid_lock);
 busid_priv->sdev = ((void*)0);
 busid_priv->status = save_status;
 spin_unlock(&busid_priv->busid_lock);

 goto sdev_free;

call_put_busid_priv:

 put_busid_priv(busid_priv);

sdev_free:
 stub_device_free(sdev);

 return rc;
}

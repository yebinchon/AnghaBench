
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; int portnum; int parent; } ;
struct usb_dev_state {int dummy; } ;
struct stub_device {int udev; } ;
struct bus_id_priv {int shutdown_busid; scalar_t__ status; int busid_lock; int * sdev; } ;


 int BUG () ;
 scalar_t__ STUB_BUSID_ADDED ;
 scalar_t__ STUB_BUSID_ALLOC ;
 int current ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct stub_device* dev_get_drvdata (int *) ;
 char* dev_name (int *) ;
 int dev_set_drvdata (int *,int *) ;
 struct bus_id_priv* get_busid_priv (char const*) ;
 int put_busid_priv (struct bus_id_priv*) ;
 int shutdown_busid (struct bus_id_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub_device_free (struct stub_device*) ;
 int usb_hub_release_port (int ,int ,struct usb_dev_state*) ;
 int usb_put_dev (int ) ;
 scalar_t__ usbip_in_eh (int ) ;

__attribute__((used)) static void stub_disconnect(struct usb_device *udev)
{
 struct stub_device *sdev;
 const char *udev_busid = dev_name(&udev->dev);
 struct bus_id_priv *busid_priv;
 int rc;

 dev_dbg(&udev->dev, "Enter disconnect\n");

 busid_priv = get_busid_priv(udev_busid);
 if (!busid_priv) {
  BUG();
  return;
 }

 sdev = dev_get_drvdata(&udev->dev);


 if (!sdev) {
  dev_err(&udev->dev, "could not get device");

  put_busid_priv(busid_priv);
  return;
 }

 dev_set_drvdata(&udev->dev, ((void*)0));


 put_busid_priv(busid_priv);






 rc = usb_hub_release_port(udev->parent, udev->portnum,
      (struct usb_dev_state *) udev);
 if (rc) {
  dev_dbg(&udev->dev, "unable to release port\n");
  return;
 }


 if (usbip_in_eh(current))
  return;


 spin_lock(&busid_priv->busid_lock);
 if (!busid_priv->shutdown_busid)
  busid_priv->shutdown_busid = 1;

 spin_unlock(&busid_priv->busid_lock);


 shutdown_busid(busid_priv);

 usb_put_dev(sdev->udev);


 spin_lock(&busid_priv->busid_lock);

 busid_priv->sdev = ((void*)0);
 stub_device_free(sdev);

 if (busid_priv->status == STUB_BUSID_ALLOC)
  busid_priv->status = STUB_BUSID_ADDED;

 spin_unlock(&busid_priv->busid_lock);
 return;
}

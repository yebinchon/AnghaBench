
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int msdstate; int netdev; struct wlandevice* wlandev; struct wlandevice* priv; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct hfa384x {int msdstate; int netdev; struct hfa384x* wlandev; struct hfa384x* priv; } ;


 int EIO ;
 int P80211ENUM_ifstate_enable ;
 int SET_NETDEV_DEV (int ,int *) ;
 int WLAN_MSD_HWPRESENT ;
 struct wlandevice* create_wlan () ;
 int dev_err (int *,char*) ;
 int hfa384x_corereset (struct wlandevice*,int ,int ,int ) ;
 int hfa384x_create (struct wlandevice*,struct usb_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct wlandevice*) ;
 scalar_t__ prism2_doreset ;
 int prism2_fwtry (struct usb_device*,struct wlandevice*) ;
 int prism2_reset_holdtime ;
 int prism2_reset_settletime ;
 int prism2sta_ifstate (struct wlandevice*,int ) ;
 scalar_t__ register_wlandev (struct wlandevice*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct wlandevice*) ;
 scalar_t__ wlan_setup (struct wlandevice*,int *) ;
 int wlan_unsetup (struct wlandevice*) ;

__attribute__((used)) static int prism2sta_probe_usb(struct usb_interface *interface,
          const struct usb_device_id *id)
{
 struct usb_device *dev;

 struct wlandevice *wlandev = ((void*)0);
 struct hfa384x *hw = ((void*)0);
 int result = 0;

 dev = interface_to_usbdev(interface);
 wlandev = create_wlan();
 if (!wlandev) {
  dev_err(&interface->dev, "Memory allocation failure.\n");
  result = -EIO;
  goto failed;
 }
 hw = wlandev->priv;

 if (wlan_setup(wlandev, &interface->dev) != 0) {
  dev_err(&interface->dev, "wlan_setup() failed.\n");
  result = -EIO;
  goto failed;
 }


 hfa384x_create(hw, dev);
 hw->wlandev = wlandev;




 SET_NETDEV_DEV(wlandev->netdev, &interface->dev);


 if (prism2_doreset) {
  result = hfa384x_corereset(hw,
        prism2_reset_holdtime,
        prism2_reset_settletime, 0);
  if (result != 0) {
   result = -EIO;
   dev_err(&interface->dev,
    "hfa384x_corereset() failed.\n");
   goto failed_reset;
  }
 }

 usb_get_dev(dev);

 wlandev->msdstate = WLAN_MSD_HWPRESENT;


 prism2_fwtry(dev, wlandev);
 prism2sta_ifstate(wlandev, P80211ENUM_ifstate_enable);

 if (register_wlandev(wlandev) != 0) {
  dev_err(&interface->dev, "register_wlandev() failed.\n");
  result = -EIO;
  goto failed_register;
 }

 goto done;

failed_register:
 usb_put_dev(dev);
failed_reset:
 wlan_unsetup(wlandev);
failed:
 kfree(wlandev);
 kfree(hw);
 wlandev = ((void*)0);

done:
 usb_set_intfdata(interface, wlandev);
 return result;
}

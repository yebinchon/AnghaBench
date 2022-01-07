
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {scalar_t__ state; } ;
struct net_device {int dummy; } ;
struct _adapter {int surprise_removed; int rtl8712_fw_ready; int fw; } ;
struct TYPE_2__ {scalar_t__ drv_registered; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 TYPE_1__ drvpriv ;
 int flush_scheduled_work () ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int r8712_free_drv_sw (struct _adapter*) ;
 int r8712_stop_drv_timers (struct _adapter*) ;
 int r871x_dev_unload (struct _adapter*) ;
 int release_firmware (int ) ;
 int udelay (int) ;
 int unregister_netdev (struct net_device*) ;
 struct net_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_reset_device (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void r871xu_dev_remove(struct usb_interface *pusb_intf)
{
 struct net_device *pnetdev = usb_get_intfdata(pusb_intf);
 struct usb_device *udev = interface_to_usbdev(pusb_intf);

 if (pnetdev) {
  struct _adapter *padapter = netdev_priv(pnetdev);

  usb_set_intfdata(pusb_intf, ((void*)0));
  release_firmware(padapter->fw);

  wait_for_completion(&padapter->rtl8712_fw_ready);
  if (drvpriv.drv_registered)
   padapter->surprise_removed = 1;
  unregister_netdev(pnetdev);
  flush_scheduled_work();
  udelay(1);

  r8712_stop_drv_timers(padapter);
  r871x_dev_unload(padapter);
  r8712_free_drv_sw(padapter);




  usb_put_dev(udev);
 }




 if (udev->state != USB_STATE_NOTATTACHED)
  usb_reset_device(udev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd_usb {int dummy; } ;
struct TYPE_2__ {struct zd_usb usb; } ;
struct zd_mac {TYPE_1__ chip; } ;
struct usb_interface {int dev; } ;
struct ieee80211_hw {int dummy; } ;


 int dev_dbg (int *,char*) ;
 int dev_dbg_f (int ,char*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int usb_reset_device (int ) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 struct ieee80211_hw* zd_intf_to_hw (struct usb_interface*) ;
 int zd_mac_clear (struct zd_mac*) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_usb_disable_int (struct zd_usb*) ;
 int zd_usb_disable_rx (struct zd_usb*) ;
 int zd_usb_disable_tx (struct zd_usb*) ;

__attribute__((used)) static void disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *hw = zd_intf_to_hw(intf);
 struct zd_mac *mac;
 struct zd_usb *usb;



 if (hw == ((void*)0))
  return;

 mac = zd_hw_mac(hw);
 usb = &mac->chip.usb;

 dev_dbg_f(zd_usb_dev(usb), "\n");

 ieee80211_unregister_hw(hw);


 zd_usb_disable_tx(usb);
 zd_usb_disable_rx(usb);
 zd_usb_disable_int(usb);






 usb_reset_device(interface_to_usbdev(intf));

 zd_mac_clear(mac);
 ieee80211_free_hw(hw);
 dev_dbg(&intf->dev, "disconnected\n");
}

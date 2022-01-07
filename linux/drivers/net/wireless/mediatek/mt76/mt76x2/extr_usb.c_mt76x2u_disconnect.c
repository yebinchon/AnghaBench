
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_hw {int dummy; } ;


 int MT76_REMOVED ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct ieee80211_hw* mt76_hw (struct mt76x02_dev*) ;
 int mt76x2u_cleanup (struct mt76x02_dev*) ;
 int set_bit (int ,int *) ;
 struct mt76x02_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mt76x2u_disconnect(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct mt76x02_dev *dev = usb_get_intfdata(intf);
 struct ieee80211_hw *hw = mt76_hw(dev);

 set_bit(MT76_REMOVED, &dev->mt76.state);
 ieee80211_unregister_hw(hw);
 mt76x2u_cleanup(dev);

 ieee80211_free_hw(hw);
 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(udev);
}

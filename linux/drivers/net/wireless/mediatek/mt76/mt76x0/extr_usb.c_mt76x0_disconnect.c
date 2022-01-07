
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int hw; int state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT76_STATE_INITIALIZED ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int mt76x0u_cleanup (struct mt76x02_dev*) ;
 int test_bit (int ,int *) ;
 struct mt76x02_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mt76x0_disconnect(struct usb_interface *usb_intf)
{
 struct mt76x02_dev *dev = usb_get_intfdata(usb_intf);
 bool initialized = test_bit(MT76_STATE_INITIALIZED, &dev->mt76.state);

 if (!initialized)
  return;

 ieee80211_unregister_hw(dev->mt76.hw);
 mt76x0u_cleanup(dev);

 usb_set_intfdata(usb_intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(usb_intf));

 ieee80211_free_hw(dev->mt76.hw);
}

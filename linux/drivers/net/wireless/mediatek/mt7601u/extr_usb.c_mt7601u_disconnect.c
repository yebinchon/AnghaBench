
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mt7601u_dev {int hw; int stat_wq; } ;


 int destroy_workqueue (int ) ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int mt7601u_cleanup (struct mt7601u_dev*) ;
 struct mt7601u_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mt7601u_disconnect(struct usb_interface *usb_intf)
{
 struct mt7601u_dev *dev = usb_get_intfdata(usb_intf);

 ieee80211_unregister_hw(dev->hw);
 mt7601u_cleanup(dev);

 usb_set_intfdata(usb_intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(usb_intf));

 destroy_workqueue(dev->stat_wq);
 ieee80211_free_hw(dev->hw);
}

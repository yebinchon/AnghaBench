
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mt7601u_dev {int dummy; } ;
typedef int pm_message_t ;


 int mt7601u_cleanup (struct mt7601u_dev*) ;
 struct mt7601u_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int mt7601u_suspend(struct usb_interface *usb_intf, pm_message_t state)
{
 struct mt7601u_dev *dev = usb_get_intfdata(usb_intf);

 mt7601u_cleanup(dev);

 return 0;
}

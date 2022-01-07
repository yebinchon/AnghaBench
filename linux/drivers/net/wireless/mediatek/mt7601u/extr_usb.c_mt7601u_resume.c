
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct mt7601u_dev {int state; } ;


 int MT7601U_STATE_INITIALIZED ;
 int mt7601u_init_hardware (struct mt7601u_dev*) ;
 int set_bit (int ,int *) ;
 struct mt7601u_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int mt7601u_resume(struct usb_interface *usb_intf)
{
 struct mt7601u_dev *dev = usb_get_intfdata(usb_intf);
 int ret;

 ret = mt7601u_init_hardware(dev);
 if (ret)
  return ret;

 set_bit(MT7601U_STATE_INITIALIZED, &dev->state);

 return 0;
}

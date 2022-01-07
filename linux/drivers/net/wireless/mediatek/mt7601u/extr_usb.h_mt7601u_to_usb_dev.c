
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct mt7601u_dev {int dev; } ;


 struct usb_device* interface_to_usbdev (int ) ;
 int to_usb_interface (int ) ;

__attribute__((used)) static inline struct usb_device *mt7601u_to_usb_dev(struct mt7601u_dev *mt7601u)
{
 return interface_to_usbdev(to_usb_interface(mt7601u->dev));
}

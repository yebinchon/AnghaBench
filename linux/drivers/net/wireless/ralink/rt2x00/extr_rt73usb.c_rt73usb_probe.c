
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int rt2x00usb_probe (struct usb_interface*,int *) ;
 int rt73usb_ops ;

__attribute__((used)) static int rt73usb_probe(struct usb_interface *usb_intf,
    const struct usb_device_id *id)
{
 return rt2x00usb_probe(usb_intf, &rt73usb_ops);
}

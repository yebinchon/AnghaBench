
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int pch_udc_pcd_vbus_draw(struct usb_gadget *gadget, unsigned int mA)
{
 return -EOPNOTSUPP;
}

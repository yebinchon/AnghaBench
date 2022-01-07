
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {scalar_t__ is_host; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 struct ssusb_mtk* dev_get_drvdata (struct device*) ;

__attribute__((used)) static enum usb_role ssusb_role_sw_get(struct device *dev)
{
 struct ssusb_mtk *ssusb = dev_get_drvdata(dev);
 enum usb_role role;

 role = ssusb->is_host ? USB_ROLE_HOST : USB_ROLE_DEVICE;

 return role;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acm {int country_rel_date; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct acm* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t iCountryCodeRelDate_show
(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct acm *acm = usb_get_intfdata(intf);

 return sprintf(buf, "%d", acm->country_rel_date);
}

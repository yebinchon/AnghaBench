
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {scalar_t__ usb_pd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct typec_partner* to_typec_partner (struct device*) ;

__attribute__((used)) static ssize_t supports_usb_power_delivery_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct typec_partner *p = to_typec_partner(dev);

 return sprintf(buf, "%s\n", p->usb_pd ? "yes" : "no");
}

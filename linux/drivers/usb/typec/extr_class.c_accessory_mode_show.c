
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_partner {size_t accessory; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct typec_partner* to_typec_partner (struct device*) ;
 char** typec_accessory_modes ;

__attribute__((used)) static ssize_t accessory_mode_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct typec_partner *p = to_typec_partner(dev);

 return sprintf(buf, "%s\n", typec_accessory_modes[p->accessory]);
}

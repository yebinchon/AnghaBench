
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct altmode {int roles; } ;
typedef int ssize_t ;





 int sprintf (char*,char*) ;
 struct altmode* to_altmode (int ) ;
 int to_typec_altmode (struct device*) ;

__attribute__((used)) static ssize_t
supported_roles_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct altmode *alt = to_altmode(to_typec_altmode(dev));
 ssize_t ret;

 switch (alt->roles) {
 case 128:
  ret = sprintf(buf, "source\n");
  break;
 case 129:
  ret = sprintf(buf, "sink\n");
  break;
 case 130:
 default:
  ret = sprintf(buf, "source sink\n");
  break;
 }
 return ret;
}

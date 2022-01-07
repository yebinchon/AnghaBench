
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {char* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct typec_altmode* to_typec_altmode (struct device*) ;

__attribute__((used)) static ssize_t
description_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct typec_altmode *alt = to_typec_altmode(dev);

 return sprintf(buf, "%s\n", alt->desc ? alt->desc : "");
}

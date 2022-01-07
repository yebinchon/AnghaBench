
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attribute_group {int dummy; } ;


 struct attribute_group const** rtc_attr_groups ;

const struct attribute_group **rtc_get_dev_attribute_groups(void)
{
 return rtc_attr_groups;
}

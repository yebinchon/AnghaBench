
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int rtc_add_groups (struct rtc_device*,struct attribute_group const**) ;

int rtc_add_group(struct rtc_device *rtc, const struct attribute_group *grp)
{
 const struct attribute_group *groups[] = { grp, ((void*)0) };

 return rtc_add_groups(rtc, groups);
}

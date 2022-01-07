
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct attribute_group const** groups; } ;
struct rtc_device {TYPE_1__ dev; scalar_t__ registered; } ;
typedef struct attribute_group const attribute_group ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct attribute_group const** devm_kcalloc (TYPE_1__*,size_t,int,int ) ;
 int devm_kfree (TYPE_1__*,struct attribute_group const**) ;
 int memcpy (struct attribute_group const**,struct attribute_group const**,size_t) ;
 struct attribute_group const** rtc_attr_groups ;

int rtc_add_groups(struct rtc_device *rtc, const struct attribute_group **grps)
{
 size_t old_cnt = 0, add_cnt = 0, new_cnt;
 const struct attribute_group **groups, **old;

 if (rtc->registered)
  return -EINVAL;
 if (!grps)
  return -EINVAL;

 groups = rtc->dev.groups;
 if (groups)
  for (; *groups; groups++)
   old_cnt++;

 for (groups = grps; *groups; groups++)
  add_cnt++;

 new_cnt = old_cnt + add_cnt + 1;
 groups = devm_kcalloc(&rtc->dev, new_cnt, sizeof(*groups), GFP_KERNEL);
 if (!groups)
  return -ENOMEM;
 memcpy(groups, rtc->dev.groups, old_cnt * sizeof(*groups));
 memcpy(groups + old_cnt, grps, add_cnt * sizeof(*groups));
 groups[old_cnt + add_cnt] = ((void*)0);

 old = rtc->dev.groups;
 rtc->dev.groups = groups;
 if (old && old != rtc_attr_groups)
  devm_kfree(&rtc->dev, old);

 return 0;
}

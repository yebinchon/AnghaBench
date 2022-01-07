
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int use_cnt; } ;
struct device {int dummy; } ;


 int atomic_inc (int *) ;
 struct device* class_find_device (int ,int *,char const*,int ) ;
 struct power_supply* dev_get_drvdata (struct device*) ;
 int power_supply_class ;
 int power_supply_match_device_by_name ;

struct power_supply *power_supply_get_by_name(const char *name)
{
 struct power_supply *psy = ((void*)0);
 struct device *dev = class_find_device(power_supply_class, ((void*)0), name,
     power_supply_match_device_by_name);

 if (dev) {
  psy = dev_get_drvdata(dev);
  atomic_inc(&psy->use_cnt);
 }

 return psy;
}

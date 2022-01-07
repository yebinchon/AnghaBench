
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct max17211_device_info {int dummy; } ;


 struct max17211_device_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static inline struct max17211_device_info *
to_device_info(struct power_supply *psy)
{
 return power_supply_get_drvdata(psy);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2781_device_info {int bat; } ;


 int CURRENT_NOW ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int ds2781_get_capacity (struct ds2781_device_info*,int*) ;
 int ds2781_get_current (struct ds2781_device_info*,int ,int*) ;
 scalar_t__ power_supply_am_i_supplied (int ) ;

__attribute__((used)) static int ds2781_get_status(struct ds2781_device_info *dev_info, int *status)
{
 int ret, current_uA, capacity;

 ret = ds2781_get_current(dev_info, CURRENT_NOW, &current_uA);
 if (ret < 0)
  return ret;

 ret = ds2781_get_capacity(dev_info, &capacity);
 if (ret < 0)
  return ret;

 if (power_supply_am_i_supplied(dev_info->bat)) {
  if (capacity == 100)
   *status = POWER_SUPPLY_STATUS_FULL;
  else if (current_uA > 50000)
   *status = POWER_SUPPLY_STATUS_CHARGING;
  else
   *status = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {
  *status = POWER_SUPPLY_STATUS_DISCHARGING;
 }
 return 0;
}

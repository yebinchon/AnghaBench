
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {TYPE_2__* batteries; scalar_t__ individual_addressing; } ;
struct TYPE_5__ {unsigned long charge_stop; unsigned long charge_start; int stop_support; int start_support; } ;
struct TYPE_4__ {int name; } ;


 int BAT_PRIMARY ;
 int EINVAL ;
 int ENODEV ;


 TYPE_3__ battery_info ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pr_crit (char*,int) ;
 struct power_supply* to_power_supply (struct device*) ;
 int tpacpi_battery_get_id (int ) ;
 int tpacpi_battery_set (int const,int,unsigned long) ;

__attribute__((used)) static ssize_t tpacpi_battery_store(int what,
        struct device *dev,
        const char *buf, size_t count)
{
 struct power_supply *supply = to_power_supply(dev);
 unsigned long value;
 int battery, rval;
 if (battery_info.individual_addressing)

  battery = tpacpi_battery_get_id(supply->desc->name);
 else
  battery = BAT_PRIMARY;

 rval = kstrtoul(buf, 10, &value);
 if (rval)
  return rval;

 switch (what) {
 case 129:
  if (!battery_info.batteries[battery].start_support)
   return -ENODEV;

  if (value < 0 || value > 99)
   return -EINVAL;
  if (value > battery_info.batteries[battery].charge_stop)
   return -EINVAL;
  if (tpacpi_battery_set(129, battery, value))
   return -ENODEV;
  battery_info.batteries[battery].charge_start = value;
  return count;

 case 128:
  if (!battery_info.batteries[battery].stop_support)
   return -ENODEV;

  if (value < 1 || value > 100)
   return -EINVAL;
  if (value < battery_info.batteries[battery].charge_start)
   return -EINVAL;
  battery_info.batteries[battery].charge_stop = value;





  if (value == 100)
   value = 0;
  if (tpacpi_battery_set(128, battery, value))
   return -EINVAL;
  return count;
 default:
  pr_crit("Wrong parameter: %d", what);
  return -EINVAL;
 }
 return count;
}

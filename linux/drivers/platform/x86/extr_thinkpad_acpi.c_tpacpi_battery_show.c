
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {scalar_t__ individual_addressing; } ;
struct TYPE_3__ {int name; } ;


 int BAT_PRIMARY ;
 int ENODEV ;
 TYPE_2__ battery_info ;
 int sprintf (char*,char*,int) ;
 struct power_supply* to_power_supply (struct device*) ;
 scalar_t__ tpacpi_battery_get (int,int,int*) ;
 int tpacpi_battery_get_id (int ) ;

__attribute__((used)) static ssize_t tpacpi_battery_show(int what,
       struct device *dev,
       char *buf)
{
 struct power_supply *supply = to_power_supply(dev);
 int ret, battery;
 if (battery_info.individual_addressing)

  battery = tpacpi_battery_get_id(supply->desc->name);
 else
  battery = BAT_PRIMARY;
 if (tpacpi_battery_get(what, battery, &ret))
  return -ENODEV;
 return sprintf(buf, "%d\n", ret);
}

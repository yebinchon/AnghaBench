
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct pm860x_battery_info {int dummy; } ;


 int calc_resistor (struct pm860x_battery_info*) ;
 struct pm860x_battery_info* dev_get_drvdata (int ) ;

__attribute__((used)) static void pm860x_external_power_changed(struct power_supply *psy)
{
 struct pm860x_battery_info *info = dev_get_drvdata(psy->dev.parent);

 calc_resistor(info);
}

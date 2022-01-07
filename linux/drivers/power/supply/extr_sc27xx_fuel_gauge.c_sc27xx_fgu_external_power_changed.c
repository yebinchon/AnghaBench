
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int battery; } ;
struct power_supply {int dummy; } ;


 int power_supply_changed (int ) ;
 struct sc27xx_fgu_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static void sc27xx_fgu_external_power_changed(struct power_supply *psy)
{
 struct sc27xx_fgu_data *data = power_supply_get_drvdata(psy);

 power_supply_changed(data->battery);
}

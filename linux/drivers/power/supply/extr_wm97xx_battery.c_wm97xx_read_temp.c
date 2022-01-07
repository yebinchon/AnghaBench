
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm97xx_batt_pdata {unsigned long temp_mult; unsigned long temp_div; int temp_aux; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;


 int dev_get_drvdata (int ) ;
 struct wm97xx_batt_pdata* power_supply_get_drvdata (struct power_supply*) ;
 unsigned long wm97xx_read_aux_adc (int ,int ) ;

__attribute__((used)) static unsigned long wm97xx_read_temp(struct power_supply *bat_ps)
{
 struct wm97xx_batt_pdata *pdata = power_supply_get_drvdata(bat_ps);

 return wm97xx_read_aux_adc(dev_get_drvdata(bat_ps->dev.parent),
     pdata->temp_aux) * pdata->temp_mult /
     pdata->temp_div;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct watchdog_device {int dummy; } ;
struct mlxreg_wdt {size_t tleft_idx; int regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int reg; } ;
struct TYPE_2__ {struct mlxreg_core_data* data; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 struct mlxreg_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int mlxreg_wdt_get_timeleft(struct watchdog_device *wdd)
{
 struct mlxreg_wdt *wdt = watchdog_get_drvdata(wdd);
 struct mlxreg_core_data *reg_data = &wdt->pdata->data[wdt->tleft_idx];
 u32 regval;
 int rc;

 rc = regmap_read(wdt->regmap, reg_data->reg, &regval);

 return rc == 0 ? regval : 0;
}

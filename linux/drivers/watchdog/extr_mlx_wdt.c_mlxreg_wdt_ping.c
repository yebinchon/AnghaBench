
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct mlxreg_wdt {size_t ping_idx; int regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int bit; int mask; int reg; } ;
struct TYPE_2__ {struct mlxreg_core_data* data; } ;


 int BIT (int ) ;
 int regmap_update_bits_base (int ,int ,int ,int ,int *,int,int) ;
 struct mlxreg_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mlxreg_wdt_ping(struct watchdog_device *wdd)
{
 struct mlxreg_wdt *wdt = watchdog_get_drvdata(wdd);
 struct mlxreg_core_data *reg_data = &wdt->pdata->data[wdt->ping_idx];

 return regmap_update_bits_base(wdt->regmap, reg_data->reg,
           ~reg_data->mask, BIT(reg_data->bit),
           ((void*)0), 0, 1);
}

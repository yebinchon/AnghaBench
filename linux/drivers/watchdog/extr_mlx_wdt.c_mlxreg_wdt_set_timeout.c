
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct mlxreg_wdt {size_t timeout_idx; scalar_t__ wdt_type; int regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int mask; int reg; } ;
struct TYPE_2__ {struct mlxreg_core_data* data; } ;


 unsigned int BIT (int) ;
 unsigned int MLXREG_WDT_CLOCK_SCALE ;
 scalar_t__ MLX_WDT_TYPE1 ;
 int mlxreg_wdt_start (struct watchdog_device*) ;
 int mlxreg_wdt_stop (struct watchdog_device*) ;
 int order_base_2 (unsigned int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;
 struct mlxreg_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mlxreg_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 struct mlxreg_wdt *wdt = watchdog_get_drvdata(wdd);
 struct mlxreg_core_data *reg_data = &wdt->pdata->data[wdt->timeout_idx];
 u32 regval, set_time, hw_timeout;
 int rc;

 if (wdt->wdt_type == MLX_WDT_TYPE1) {
  rc = regmap_read(wdt->regmap, reg_data->reg, &regval);
  if (rc)
   return rc;

  hw_timeout = order_base_2(timeout * MLXREG_WDT_CLOCK_SCALE);
  regval = (regval & reg_data->mask) | hw_timeout;

  set_time = BIT(hw_timeout) / MLXREG_WDT_CLOCK_SCALE;
 } else {
  set_time = timeout;
  regval = timeout;
 }

 wdd->timeout = set_time;
 rc = regmap_write(wdt->regmap, reg_data->reg, regval);

 if (!rc) {




  if (watchdog_active(wdd)) {
   rc = mlxreg_wdt_stop(wdd);
   if (!rc)
    rc = mlxreg_wdt_start(wdd);
  }
 }

 return rc;
}

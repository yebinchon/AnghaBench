
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int bootstatus; int parent; TYPE_2__* info; } ;
struct mlxreg_wdt {size_t reset_idx; TYPE_3__ wdd; int regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int mask; int reg; } ;
struct TYPE_5__ {int options; } ;
struct TYPE_4__ {struct mlxreg_core_data* data; } ;


 size_t EINVAL ;
 int WDIOF_CARDRESET ;
 int dev_info (int ,char*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void mlxreg_wdt_check_card_reset(struct mlxreg_wdt *wdt)
{
 struct mlxreg_core_data *reg_data;
 u32 regval;
 int rc;

 if (wdt->reset_idx == -EINVAL)
  return;

 if (!(wdt->wdd.info->options & WDIOF_CARDRESET))
  return;

 reg_data = &wdt->pdata->data[wdt->reset_idx];
 rc = regmap_read(wdt->regmap, reg_data->reg, &regval);
 if (!rc) {
  if (regval & ~reg_data->mask) {
   wdt->wdd.bootstatus = WDIOF_CARDRESET;
   dev_info(wdt->wdd.parent,
     "watchdog previously reset the CPU\n");
  }
 }
}

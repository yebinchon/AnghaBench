
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_timeout; int max_timeout; int * ops; TYPE_2__* info; } ;
struct mlxreg_wdt {int reset_idx; int action_idx; int timeout_idx; int tleft_idx; int ping_idx; scalar_t__ wdt_type; TYPE_1__ wdd; struct mlxreg_core_platform_data* pdata; } ;
struct mlxreg_core_platform_data {int counter; scalar_t__ version; int identity; struct mlxreg_core_data* data; } ;
struct mlxreg_core_data {int label; } ;
struct TYPE_5__ {char* identity; } ;


 int EINVAL ;
 int MLXREG_WDT_MAX_TIMEOUT_TYPE1 ;
 int MLXREG_WDT_MAX_TIMEOUT_TYPE2 ;
 int MLXREG_WDT_MIN_TIMEOUT ;
 scalar_t__ MLX_WDT_TYPE2 ;
 TYPE_2__ mlxreg_wdt_aux_info ;
 TYPE_2__ mlxreg_wdt_main_info ;
 int mlxreg_wdt_ops_type1 ;
 int mlxreg_wdt_ops_type2 ;
 scalar_t__ strnstr (int ,char*,int) ;

__attribute__((used)) static void mlxreg_wdt_config(struct mlxreg_wdt *wdt,
         struct mlxreg_core_platform_data *pdata)
{
 struct mlxreg_core_data *data = pdata->data;
 int i;

 wdt->reset_idx = -EINVAL;
 for (i = 0; i < pdata->counter; i++, data++) {
  if (strnstr(data->label, "action", sizeof(data->label)))
   wdt->action_idx = i;
  else if (strnstr(data->label, "timeout", sizeof(data->label)))
   wdt->timeout_idx = i;
  else if (strnstr(data->label, "timeleft", sizeof(data->label)))
   wdt->tleft_idx = i;
  else if (strnstr(data->label, "ping", sizeof(data->label)))
   wdt->ping_idx = i;
  else if (strnstr(data->label, "reset", sizeof(data->label)))
   wdt->reset_idx = i;
 }

 wdt->pdata = pdata;
 if (strnstr(pdata->identity, mlxreg_wdt_main_info.identity,
      sizeof(mlxreg_wdt_main_info.identity)))
  wdt->wdd.info = &mlxreg_wdt_main_info;
 else
  wdt->wdd.info = &mlxreg_wdt_aux_info;

 wdt->wdt_type = pdata->version;
 if (wdt->wdt_type == MLX_WDT_TYPE2) {
  wdt->wdd.ops = &mlxreg_wdt_ops_type2;
  wdt->wdd.max_timeout = MLXREG_WDT_MAX_TIMEOUT_TYPE2;
 } else {
  wdt->wdd.ops = &mlxreg_wdt_ops_type1;
  wdt->wdd.max_timeout = MLXREG_WDT_MAX_TIMEOUT_TYPE1;
 }
 wdt->wdd.min_timeout = MLXREG_WDT_MIN_TIMEOUT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxreg_wdt {size_t timeout_idx; int wdd; } ;
struct mlxreg_core_platform_data {TYPE_1__* data; } ;
struct TYPE_2__ {int health_cntr; } ;


 int mlxreg_wdt_set_timeout (int *,int ) ;

__attribute__((used)) static int mlxreg_wdt_init_timeout(struct mlxreg_wdt *wdt,
       struct mlxreg_core_platform_data *pdata)
{
 u32 timeout;

 timeout = pdata->data[wdt->timeout_idx].health_cntr;
 return mlxreg_wdt_set_timeout(&wdt->wdd, timeout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* retention_ctrl; } ;
struct TYPE_2__ {scalar_t__ refcnt; } ;


 int atomic_inc (scalar_t__) ;

__attribute__((used)) static void exynos_retention_enable(struct samsung_pinctrl_drv_data *drvdata)
{
 if (drvdata->retention_ctrl->refcnt)
  atomic_inc(drvdata->retention_ctrl->refcnt);
}

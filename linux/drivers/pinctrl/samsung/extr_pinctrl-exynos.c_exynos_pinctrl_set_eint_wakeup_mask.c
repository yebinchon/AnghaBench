
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {int dev; TYPE_1__* retention_ctrl; } ;
struct regmap {int dummy; } ;
struct exynos_irq_chip {int eint_wake_mask_value; int eint_wake_mask_reg; } ;
struct TYPE_2__ {struct regmap* priv; } ;


 int dev_info (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void
exynos_pinctrl_set_eint_wakeup_mask(struct samsung_pinctrl_drv_data *drvdata,
        struct exynos_irq_chip *irq_chip)
{
 struct regmap *pmu_regs;

 if (!drvdata->retention_ctrl || !drvdata->retention_ctrl->priv) {
  dev_warn(drvdata->dev,
    "No retention data configured bank with external wakeup interrupt. Wake-up mask will not be set.\n");
  return;
 }

 pmu_regs = drvdata->retention_ctrl->priv;
 dev_info(drvdata->dev,
   "Setting external wakeup interrupt mask: 0x%x\n",
   irq_chip->eint_wake_mask_value);

 regmap_write(pmu_regs, irq_chip->eint_wake_mask_reg,
       irq_chip->eint_wake_mask_value);
}

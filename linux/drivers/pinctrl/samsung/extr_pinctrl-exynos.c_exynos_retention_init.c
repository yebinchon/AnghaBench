
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_retention_data {int nr_regs; int refcnt; int value; int * regs; } ;
struct samsung_retention_ctrl {int nr_regs; int value; int * regs; int disable; int enable; int refcnt; struct regmap* priv; } ;
struct samsung_pinctrl_drv_data {int dev; } ;
struct regmap {int dummy; } ;


 int ENOMEM ;
 struct samsung_retention_ctrl* ERR_CAST (struct regmap*) ;
 struct samsung_retention_ctrl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 struct samsung_retention_ctrl* devm_kzalloc (int ,int,int ) ;
 struct regmap* exynos_get_pmu_regmap () ;
 int exynos_retention_disable ;
 int exynos_retention_enable ;
 int regmap_write (struct regmap*,int ,int ) ;

struct samsung_retention_ctrl *
exynos_retention_init(struct samsung_pinctrl_drv_data *drvdata,
        const struct samsung_retention_data *data)
{
 struct samsung_retention_ctrl *ctrl;
 struct regmap *pmu_regs;
 int i;

 ctrl = devm_kzalloc(drvdata->dev, sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return ERR_PTR(-ENOMEM);

 pmu_regs = exynos_get_pmu_regmap();
 if (IS_ERR(pmu_regs))
  return ERR_CAST(pmu_regs);

 ctrl->priv = pmu_regs;
 ctrl->regs = data->regs;
 ctrl->nr_regs = data->nr_regs;
 ctrl->value = data->value;
 ctrl->refcnt = data->refcnt;
 ctrl->enable = exynos_retention_enable;
 ctrl->disable = exynos_retention_disable;


 for (i = 0; i < ctrl->nr_regs; i++)
  regmap_write(pmu_regs, ctrl->regs[i], ctrl->value);

 return ctrl;
}

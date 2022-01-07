
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pmx_func {int dummy; } ;
struct samsung_pinctrl_drv_data {unsigned int nr_groups; unsigned int nr_functions; struct samsung_pmx_func* pmx_functions; struct samsung_pmx_func* pin_groups; } ;
typedef struct samsung_pmx_func samsung_pin_group ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ IS_ERR (struct samsung_pmx_func*) ;
 int PTR_ERR (struct samsung_pmx_func*) ;
 int dev_err (struct device*,char*) ;
 struct samsung_pmx_func* samsung_pinctrl_create_functions (struct device*,struct samsung_pinctrl_drv_data*,unsigned int*) ;
 struct samsung_pmx_func* samsung_pinctrl_create_groups (struct device*,struct samsung_pinctrl_drv_data*,unsigned int*) ;

__attribute__((used)) static int samsung_pinctrl_parse_dt(struct platform_device *pdev,
        struct samsung_pinctrl_drv_data *drvdata)
{
 struct device *dev = &pdev->dev;
 struct samsung_pin_group *groups;
 struct samsung_pmx_func *functions;
 unsigned int grp_cnt = 0, func_cnt = 0;

 groups = samsung_pinctrl_create_groups(dev, drvdata, &grp_cnt);
 if (IS_ERR(groups)) {
  dev_err(dev, "failed to parse pin groups\n");
  return PTR_ERR(groups);
 }

 functions = samsung_pinctrl_create_functions(dev, drvdata, &func_cnt);
 if (IS_ERR(functions)) {
  dev_err(dev, "failed to parse pin functions\n");
  return PTR_ERR(functions);
 }

 drvdata->pin_groups = groups;
 drvdata->nr_groups = grp_cnt;
 drvdata->pmx_functions = functions;
 drvdata->nr_functions = func_cnt;

 return 0;
}

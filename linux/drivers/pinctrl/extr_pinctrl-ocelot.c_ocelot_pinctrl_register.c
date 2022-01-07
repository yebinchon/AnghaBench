
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ocelot_pinctrl {int pctl; int desc; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_pinctrl_register (int *,int ,struct ocelot_pinctrl*) ;
 int ocelot_create_group_func_map (int *,struct ocelot_pinctrl*) ;

__attribute__((used)) static int ocelot_pinctrl_register(struct platform_device *pdev,
       struct ocelot_pinctrl *info)
{
 int ret;

 ret = ocelot_create_group_func_map(&pdev->dev, info);
 if (ret) {
  dev_err(&pdev->dev, "Unable to create group func map.\n");
  return ret;
 }

 info->pctl = devm_pinctrl_register(&pdev->dev, info->desc, info);
 if (IS_ERR(info->pctl)) {
  dev_err(&pdev->dev, "Failed to register pinctrl\n");
  return PTR_ERR(info->pctl);
 }

 return 0;
}

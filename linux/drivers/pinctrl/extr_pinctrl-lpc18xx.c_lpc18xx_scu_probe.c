
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct lpc18xx_scu_data {int pctl; int clk; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct lpc18xx_scu_data* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,int *,struct lpc18xx_scu_data*) ;
 int lpc18xx_create_group_func_map (int *,struct lpc18xx_scu_data*) ;
 int lpc18xx_scu_desc ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpc18xx_scu_data*) ;

__attribute__((used)) static int lpc18xx_scu_probe(struct platform_device *pdev)
{
 struct lpc18xx_scu_data *scu;
 struct resource *res;
 int ret;

 scu = devm_kzalloc(&pdev->dev, sizeof(*scu), GFP_KERNEL);
 if (!scu)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 scu->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(scu->base))
  return PTR_ERR(scu->base);

 scu->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(scu->clk)) {
  dev_err(&pdev->dev, "Input clock not found.\n");
  return PTR_ERR(scu->clk);
 }

 ret = lpc18xx_create_group_func_map(&pdev->dev, scu);
 if (ret) {
  dev_err(&pdev->dev, "Unable to create group func map.\n");
  return ret;
 }

 ret = clk_prepare_enable(scu->clk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable clock.\n");
  return ret;
 }

 platform_set_drvdata(pdev, scu);

 scu->pctl = devm_pinctrl_register(&pdev->dev, &lpc18xx_scu_desc, scu);
 if (IS_ERR(scu->pctl)) {
  dev_err(&pdev->dev, "Could not register pinctrl driver\n");
  clk_disable_unprepare(scu->clk);
  return PTR_ERR(scu->pctl);
 }

 return 0;
}

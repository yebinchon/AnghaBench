
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct berlin_pinctrl_desc {int dummy; } ;
struct berlin_pinctrl {int pctrl_dev; struct berlin_pinctrl_desc const* desc; struct device* dev; struct regmap* regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int berlin_pctrl_desc ;
 int berlin_pinctrl_build_state (struct platform_device*) ;
 int dev_err (struct device*,char*,...) ;
 struct berlin_pinctrl* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,int *,struct berlin_pinctrl*) ;
 int platform_set_drvdata (struct platform_device*,struct berlin_pinctrl*) ;

int berlin_pinctrl_probe_regmap(struct platform_device *pdev,
    const struct berlin_pinctrl_desc *desc,
    struct regmap *regmap)
{
 struct device *dev = &pdev->dev;
 struct berlin_pinctrl *pctrl;
 int ret;

 pctrl = devm_kzalloc(dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 platform_set_drvdata(pdev, pctrl);

 pctrl->regmap = regmap;
 pctrl->dev = &pdev->dev;
 pctrl->desc = desc;

 ret = berlin_pinctrl_build_state(pdev);
 if (ret) {
  dev_err(dev, "cannot build driver state: %d\n", ret);
  return ret;
 }

 pctrl->pctrl_dev = devm_pinctrl_register(dev, &berlin_pctrl_desc,
       pctrl);
 if (IS_ERR(pctrl->pctrl_dev)) {
  dev_err(dev, "failed to register pinctrl driver\n");
  return PTR_ERR(pctrl->pctrl_dev);
 }

 return 0;
}

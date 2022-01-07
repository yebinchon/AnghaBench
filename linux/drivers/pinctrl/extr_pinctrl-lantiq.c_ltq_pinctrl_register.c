
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pinctrl_desc {int * pmxops; int * pctlops; } ;
struct ltq_pinmux_info {int pctrl; int * dev; struct pinctrl_desc* desc; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_pinctrl_register (int *,struct pinctrl_desc*,struct ltq_pinmux_info*) ;
 int ltq_pctrl_ops ;
 int ltq_pmx_ops ;
 int platform_set_drvdata (struct platform_device*,struct ltq_pinmux_info*) ;

int ltq_pinctrl_register(struct platform_device *pdev,
    struct ltq_pinmux_info *info)
{
 struct pinctrl_desc *desc;

 if (!info)
  return -EINVAL;
 desc = info->desc;
 desc->pctlops = &ltq_pctrl_ops;
 desc->pmxops = &ltq_pmx_ops;
 info->dev = &pdev->dev;

 info->pctrl = devm_pinctrl_register(&pdev->dev, desc, info);
 if (IS_ERR(info->pctrl)) {
  dev_err(&pdev->dev, "failed to register LTQ pinmux driver\n");
  return PTR_ERR(info->pctrl);
 }
 platform_set_drvdata(pdev, info);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_desc {scalar_t__ npins; scalar_t__ pins; int name; } ;
struct imx1_pinctrl_soc_info {TYPE_1__* dev; scalar_t__ npins; scalar_t__ pins; } ;
struct imx1_pinctrl {int pctl; TYPE_1__* dev; struct imx1_pinctrl_soc_info* info; int base; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int devm_ioremap_nocache (TYPE_1__*,int ,int ) ;
 struct imx1_pinctrl* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_pinctrl_register (TYPE_1__*,struct pinctrl_desc*,struct imx1_pinctrl*) ;
 struct pinctrl_desc imx1_pinctrl_desc ;
 int imx1_pinctrl_parse_dt (struct platform_device*,struct imx1_pinctrl*,struct imx1_pinctrl_soc_info*) ;
 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;
 int pinctrl_unregister (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct imx1_pinctrl*) ;
 int resource_size (struct resource*) ;

int imx1_pinctrl_core_probe(struct platform_device *pdev,
        struct imx1_pinctrl_soc_info *info)
{
 struct imx1_pinctrl *ipctl;
 struct resource *res;
 struct pinctrl_desc *pctl_desc;
 int ret;

 if (!info || !info->pins || !info->npins) {
  dev_err(&pdev->dev, "wrong pinctrl info\n");
  return -EINVAL;
 }
 info->dev = &pdev->dev;


 ipctl = devm_kzalloc(&pdev->dev, sizeof(*ipctl), GFP_KERNEL);
 if (!ipctl)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENOENT;

 ipctl->base = devm_ioremap_nocache(&pdev->dev, res->start,
   resource_size(res));
 if (!ipctl->base)
  return -ENOMEM;

 pctl_desc = &imx1_pinctrl_desc;
 pctl_desc->name = dev_name(&pdev->dev);
 pctl_desc->pins = info->pins;
 pctl_desc->npins = info->npins;

 ret = imx1_pinctrl_parse_dt(pdev, ipctl, info);
 if (ret) {
  dev_err(&pdev->dev, "fail to probe dt properties\n");
  return ret;
 }

 ipctl->info = info;
 ipctl->dev = info->dev;
 platform_set_drvdata(pdev, ipctl);
 ipctl->pctl = devm_pinctrl_register(&pdev->dev, pctl_desc, ipctl);
 if (IS_ERR(ipctl->pctl)) {
  dev_err(&pdev->dev, "could not register IMX pinctrl driver\n");
  return PTR_ERR(ipctl->pctl);
 }

 ret = of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);
 if (ret) {
  pinctrl_unregister(ipctl->pctl);
  dev_err(&pdev->dev, "Failed to populate subdevices\n");
  return ret;
 }

 dev_info(&pdev->dev, "initialized IMX pinctrl driver\n");

 return 0;
}

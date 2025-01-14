
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_pinctrl {int nbanks; TYPE_1__* banks; int pctl; TYPE_2__* dev; } ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pinctrl_desc {int name; int * confops; int * pmxops; int * pctlops; int owner; } ;
struct TYPE_6__ {int range; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_pinctrl_register (TYPE_2__*,struct pinctrl_desc*,struct st_pinctrl*) ;
 int pinctrl_add_gpio_range (int ,int *) ;
 int platform_set_drvdata (struct platform_device*,struct st_pinctrl*) ;
 int st_confops ;
 int st_pctl_probe_dt (struct platform_device*,struct pinctrl_desc*,struct st_pinctrl*) ;
 int st_pctlops ;
 int st_pmxops ;

__attribute__((used)) static int st_pctl_probe(struct platform_device *pdev)
{
 struct st_pinctrl *info;
 struct pinctrl_desc *pctl_desc;
 int ret, i;

 if (!pdev->dev.of_node) {
  dev_err(&pdev->dev, "device node not found.\n");
  return -EINVAL;
 }

 pctl_desc = devm_kzalloc(&pdev->dev, sizeof(*pctl_desc), GFP_KERNEL);
 if (!pctl_desc)
  return -ENOMEM;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = &pdev->dev;
 platform_set_drvdata(pdev, info);
 ret = st_pctl_probe_dt(pdev, pctl_desc, info);
 if (ret)
  return ret;

 pctl_desc->owner = THIS_MODULE;
 pctl_desc->pctlops = &st_pctlops;
 pctl_desc->pmxops = &st_pmxops;
 pctl_desc->confops = &st_confops;
 pctl_desc->name = dev_name(&pdev->dev);

 info->pctl = devm_pinctrl_register(&pdev->dev, pctl_desc, info);
 if (IS_ERR(info->pctl)) {
  dev_err(&pdev->dev, "Failed pinctrl registration\n");
  return PTR_ERR(info->pctl);
 }

 for (i = 0; i < info->nbanks; i++)
  pinctrl_add_gpio_range(info->pctl, &info->banks[i].range);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; int * pmxops; int * pctlops; int name; } ;
struct rza1_pinctrl {int data; TYPE_1__ desc; int mutex; int base; int * dev; } ;
struct platform_device {int dev; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_info (int *,char*) ;
 struct rza1_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int mutex_init (int *) ;
 int of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rza1_pinctrl*) ;
 int rza1_pinctrl_ops ;
 int rza1_pinctrl_register (struct rza1_pinctrl*) ;
 int rza1_pinmux_ops ;

__attribute__((used)) static int rza1_pinctrl_probe(struct platform_device *pdev)
{
 struct rza1_pinctrl *rza1_pctl;
 int ret;

 rza1_pctl = devm_kzalloc(&pdev->dev, sizeof(*rza1_pctl), GFP_KERNEL);
 if (!rza1_pctl)
  return -ENOMEM;

 rza1_pctl->dev = &pdev->dev;

 rza1_pctl->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(rza1_pctl->base))
  return PTR_ERR(rza1_pctl->base);

 mutex_init(&rza1_pctl->mutex);

 platform_set_drvdata(pdev, rza1_pctl);

 rza1_pctl->desc.name = DRIVER_NAME;
 rza1_pctl->desc.pctlops = &rza1_pinctrl_ops;
 rza1_pctl->desc.pmxops = &rza1_pinmux_ops;
 rza1_pctl->desc.owner = THIS_MODULE;
 rza1_pctl->data = of_device_get_match_data(&pdev->dev);

 ret = rza1_pinctrl_register(rza1_pctl);
 if (ret)
  return ret;

 dev_info(&pdev->dev,
   "RZ/A1 pin controller and gpio successfully registered\n");

 return 0;
}

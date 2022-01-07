
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_pinctrl_data {int num_pins; int pins; int pmx_ops; } ;
struct TYPE_2__ {char* name; int npins; int pins; int * confops; int pmxops; int * pctlops; int owner; } ;
struct meson_pinctrl {int pcdev; struct device* dev; TYPE_1__ desc; struct meson_pinctrl_data* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct meson_pinctrl* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,TYPE_1__*,struct meson_pinctrl*) ;
 int meson_gpiolib_register (struct meson_pinctrl*) ;
 int meson_pctrl_ops ;
 int meson_pinconf_ops ;
 int meson_pinctrl_parse_dt (struct meson_pinctrl*,int ) ;
 scalar_t__ of_device_get_match_data (struct device*) ;

int meson_pinctrl_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct meson_pinctrl *pc;
 int ret;

 pc = devm_kzalloc(dev, sizeof(struct meson_pinctrl), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 pc->dev = dev;
 pc->data = (struct meson_pinctrl_data *) of_device_get_match_data(dev);

 ret = meson_pinctrl_parse_dt(pc, dev->of_node);
 if (ret)
  return ret;

 pc->desc.name = "pinctrl-meson";
 pc->desc.owner = THIS_MODULE;
 pc->desc.pctlops = &meson_pctrl_ops;
 pc->desc.pmxops = pc->data->pmx_ops;
 pc->desc.confops = &meson_pinconf_ops;
 pc->desc.pins = pc->data->pins;
 pc->desc.npins = pc->data->num_pins;

 pc->pcdev = devm_pinctrl_register(pc->dev, &pc->desc, pc);
 if (IS_ERR(pc->pcdev)) {
  dev_err(pc->dev, "can't register pinctrl device");
  return PTR_ERR(pc->pcdev);
 }

 return meson_gpiolib_register(pc);
}

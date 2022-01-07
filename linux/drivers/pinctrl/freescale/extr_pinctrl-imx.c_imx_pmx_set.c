
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct imx_pinctrl_soc_info {int flags; } ;
struct imx_pinctrl {int dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin {int dummy; } ;
struct group_desc {unsigned int num_pins; scalar_t__ data; int name; } ;
struct function_desc {int name; } ;


 int EINVAL ;
 int IMX_USE_SCU ;
 int dev_dbg (int ,char*,int ,int ) ;
 int imx_pmx_set_one_pin_mmio (struct imx_pinctrl*,struct imx_pin*) ;
 struct imx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct group_desc* pinctrl_generic_get_group (struct pinctrl_dev*,unsigned int) ;
 struct function_desc* pinmux_generic_get_function (struct pinctrl_dev*,unsigned int) ;

__attribute__((used)) static int imx_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
         unsigned group)
{
 struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx_pinctrl_soc_info *info = ipctl->info;
 struct function_desc *func;
 struct group_desc *grp;
 struct imx_pin *pin;
 unsigned int npins;
 int i, err;





 grp = pinctrl_generic_get_group(pctldev, group);
 if (!grp)
  return -EINVAL;

 func = pinmux_generic_get_function(pctldev, selector);
 if (!func)
  return -EINVAL;

 npins = grp->num_pins;

 dev_dbg(ipctl->dev, "enable function %s group %s\n",
  func->name, grp->name);

 for (i = 0; i < npins; i++) {





  pin = &((struct imx_pin *)(grp->data))[i];
  if (!(info->flags & IMX_USE_SCU)) {
   err = imx_pmx_set_one_pin_mmio(ipctl, pin);
   if (err)
    return err;
  }
 }

 return 0;
}

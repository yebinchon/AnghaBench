
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_desc {int npins; struct pinctrl_pin_desc* pins; } ;
struct samsung_pinctrl_drv_data {struct pinctrl_desc pctl; } ;
struct samsung_pin_group {int num_pins; int * pins; int name; } ;
struct pinctrl_pin_desc {int number; int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct samsung_pin_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct samsung_pin_group* devm_kcalloc (struct device*,int,int,int ) ;

__attribute__((used)) static struct samsung_pin_group *samsung_pinctrl_create_groups(
    struct device *dev,
    struct samsung_pinctrl_drv_data *drvdata,
    unsigned int *cnt)
{
 struct pinctrl_desc *ctrldesc = &drvdata->pctl;
 struct samsung_pin_group *groups, *grp;
 const struct pinctrl_pin_desc *pdesc;
 int i;

 groups = devm_kcalloc(dev, ctrldesc->npins, sizeof(*groups),
    GFP_KERNEL);
 if (!groups)
  return ERR_PTR(-EINVAL);
 grp = groups;

 pdesc = ctrldesc->pins;
 for (i = 0; i < ctrldesc->npins; ++i, ++pdesc, ++grp) {
  grp->name = pdesc->name;
  grp->pins = &pdesc->number;
  grp->num_pins = 1;
 }

 *cnt = ctrldesc->npins;
 return groups;
}

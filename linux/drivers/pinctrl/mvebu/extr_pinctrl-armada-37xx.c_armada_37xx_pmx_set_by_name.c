
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct armada_37xx_pinctrl {int regmap; int dev; } ;
struct armada_37xx_pin_group {unsigned int reg_mask; int* val; int funcs; int name; } ;


 int ENOTSUPP ;
 int NB_FUNCS ;
 unsigned int SELECTION ;
 int dev_dbg (int ,char*,char const*,int ) ;
 int match_string (int ,int ,char const*) ;
 struct armada_37xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static int armada_37xx_pmx_set_by_name(struct pinctrl_dev *pctldev,
           const char *name,
           struct armada_37xx_pin_group *grp)
{
 struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 unsigned int reg = SELECTION;
 unsigned int mask = grp->reg_mask;
 int func, val;

 dev_dbg(info->dev, "enable function %s group %s\n",
  name, grp->name);

 func = match_string(grp->funcs, NB_FUNCS, name);
 if (func < 0)
  return -ENOTSUPP;

 val = grp->val[func];

 regmap_update_bits(info->regmap, reg, mask, val);

 return 0;
}

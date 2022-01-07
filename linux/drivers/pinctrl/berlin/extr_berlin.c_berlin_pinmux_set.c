
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct berlin_pinctrl_function {int name; } ;
struct berlin_pinctrl {int regmap; struct berlin_pinctrl_function* functions; TYPE_1__* desc; } ;
struct berlin_desc_group {int lsb; int offset; scalar_t__ bit_width; } ;
struct berlin_desc_function {int muxval; } ;
struct TYPE_2__ {struct berlin_desc_group* groups; } ;


 int EINVAL ;
 int GENMASK (scalar_t__,int) ;
 struct berlin_desc_function* berlin_pinctrl_find_function_by_name (struct berlin_pinctrl*,struct berlin_desc_group const*,int ) ;
 struct berlin_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int berlin_pinmux_set(struct pinctrl_dev *pctrl_dev,
        unsigned function,
        unsigned group)
{
 struct berlin_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrl_dev);
 const struct berlin_desc_group *group_desc = pctrl->desc->groups + group;
 struct berlin_pinctrl_function *func = pctrl->functions + function;
 struct berlin_desc_function *function_desc =
  berlin_pinctrl_find_function_by_name(pctrl, group_desc,
           func->name);
 u32 mask, val;

 if (!function_desc)
  return -EINVAL;

 mask = GENMASK(group_desc->lsb + group_desc->bit_width - 1,
         group_desc->lsb);
 val = function_desc->muxval << group_desc->lsb;
 regmap_update_bits(pctrl->regmap, group_desc->offset, mask, val);

 return 0;
}

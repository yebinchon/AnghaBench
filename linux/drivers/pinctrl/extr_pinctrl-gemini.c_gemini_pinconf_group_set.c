
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct gemini_pmx {int dev; int map; scalar_t__ is_3516; scalar_t__ is_3512; } ;
struct gemini_pin_group {int name; int driving_mask; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;
 int GLOBAL_IODRIVE ;

 int dev_dbg (int ,char*,int,int,int ,int) ;
 int dev_err (int ,char*,int) ;
 int ffs (int ) ;
 struct gemini_pin_group* gemini_3512_pin_groups ;
 struct gemini_pin_group* gemini_3516_pin_groups ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct gemini_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int gemini_pinconf_group_set(struct pinctrl_dev *pctldev,
        unsigned selector,
        unsigned long *configs,
        unsigned num_configs)
{
 struct gemini_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 const struct gemini_pin_group *grp = ((void*)0);
 enum pin_config_param param;
 u32 arg;
 u32 val;
 int i;

 if (pmx->is_3512)
  grp = &gemini_3512_pin_groups[selector];
 if (pmx->is_3516)
  grp = &gemini_3516_pin_groups[selector];


 if (!grp->driving_mask) {
  dev_err(pmx->dev, "pin config group \"%s\" does "
   "not support drive strength setting\n",
   grp->name);
  return -EINVAL;
 }

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 128:
   switch (arg) {
   case 4:
    val = 0;
    break;
   case 8:
    val = 1;
    break;
   case 12:
    val = 2;
    break;
   case 16:
    val = 3;
    break;
   default:
    dev_err(pmx->dev,
     "invalid drive strength %d mA\n",
     arg);
    return -ENOTSUPP;
   }
   val <<= (ffs(grp->driving_mask) - 1);
   regmap_update_bits(pmx->map, GLOBAL_IODRIVE,
        grp->driving_mask,
        val);
   dev_dbg(pmx->dev,
    "set group %s to %d mA drive strength mask %08x val %08x\n",
    grp->name, arg, grp->driving_mask, val);
   break;
  default:
   dev_err(pmx->dev, "invalid config param %04x\n", param);
   return -ENOTSUPP;
  }
 }

 return 0;
}

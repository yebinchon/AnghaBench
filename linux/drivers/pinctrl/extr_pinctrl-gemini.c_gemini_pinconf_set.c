
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct gemini_pmx {int dev; int map; } ;
struct gemini_pin_conf {int mask; int reg; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;

 int dev_dbg (int ,char*,unsigned int,int ,int) ;
 int dev_err (int ,char*,int) ;
 int ffs (int ) ;
 struct gemini_pin_conf* gemini_get_pin_conf (struct gemini_pmx*,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct gemini_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int gemini_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *configs, unsigned int num_configs)
{
 struct gemini_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 const struct gemini_pin_conf *conf;
 enum pin_config_param param;
 u32 arg;
 int ret = 0;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 128:
   if (arg > 0xf)
    return -EINVAL;
   conf = gemini_get_pin_conf(pmx, pin);
   if (!conf) {
    dev_err(pmx->dev,
     "invalid pin for skew delay %d\n", pin);
    return -ENOTSUPP;
   }
   arg <<= (ffs(conf->mask) - 1);
   dev_dbg(pmx->dev,
    "set pin %d to skew delay mask %08x, val %08x\n",
    pin, conf->mask, arg);
   regmap_update_bits(pmx->map, conf->reg, conf->mask, arg);
   break;
  default:
   dev_err(pmx->dev, "Invalid config param %04x\n", param);
   return -ENOTSUPP;
  }
 }

 return ret;
}

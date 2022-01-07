
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_pinctrl_soc_info {struct pinctrl_pin_desc* pins; } ;
struct zx_pinctrl {scalar_t__ aux_base; struct zx_pinctrl_soc_info* info; } ;
struct zx_pin_data {int cbitpos; scalar_t__ coffset; } ;
struct pinctrl_pin_desc {struct zx_pin_data* drv_data; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;





 int ZX_DS_MASK ;
 int ZX_DS_SHIFT ;
 int ZX_INPUT_ENABLE ;
 int ZX_PULL_DOWN ;
 int ZX_PULL_UP ;
 int ZX_SLEW ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct zx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int zx_pin_config_get(struct pinctrl_dev *pctldev, unsigned int pin,
        unsigned long *config)
{
 struct zx_pinctrl *zpctl = pinctrl_dev_get_drvdata(pctldev);
 struct zx_pinctrl_soc_info *info = zpctl->info;
 const struct pinctrl_pin_desc *pindesc = info->pins + pin;
 struct zx_pin_data *data = pindesc->drv_data;
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 val;


 if (!data)
  return -EINVAL;

 val = readl(zpctl->aux_base + data->coffset);
 val = val >> data->cbitpos;

 switch (param) {
 case 132:
  val &= ZX_PULL_DOWN;
  val = !!val;
  if (val == 0)
   return -EINVAL;
  break;
 case 131:
  val &= ZX_PULL_UP;
  val = !!val;
  if (val == 0)
   return -EINVAL;
  break;
 case 129:
  val &= ZX_INPUT_ENABLE;
  val = !!val;
  if (val == 0)
   return -EINVAL;
  break;
 case 130:
  val &= ZX_DS_MASK;
  val = val >> ZX_DS_SHIFT;
  break;
 case 128:
  val &= ZX_SLEW;
  val = !!val;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, val);

 return 0;
}

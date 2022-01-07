
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sh_pfc_pinctrl {struct sh_pfc* pfc; } ;
struct sh_pfc {int lock; TYPE_2__* info; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned int (* get_bias ) (struct sh_pfc*,unsigned int) ;int (* pin_to_pocctrl ) (struct sh_pfc*,unsigned int,int*) ;} ;


 int BIT (int) ;
 int EINVAL ;
 int ENOTSUPP ;





 int WARN (int,char*,unsigned int) ;
 unsigned long pinconf_to_config_packed (int,unsigned int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sh_pfc_pinconf_get_drive_strength (struct sh_pfc*,unsigned int) ;
 int sh_pfc_pinconf_validate (struct sh_pfc*,unsigned int,int) ;
 int sh_pfc_read (struct sh_pfc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (struct sh_pfc*,unsigned int) ;
 int stub2 (struct sh_pfc*,unsigned int,int*) ;

__attribute__((used)) static int sh_pfc_pinconf_get(struct pinctrl_dev *pctldev, unsigned _pin,
         unsigned long *config)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct sh_pfc *pfc = pmx->pfc;
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned long flags;
 unsigned int arg;

 if (!sh_pfc_pinconf_validate(pfc, _pin, param))
  return -ENOTSUPP;

 switch (param) {
 case 132:
 case 130:
 case 131: {
  unsigned int bias;

  if (!pfc->info->ops || !pfc->info->ops->get_bias)
   return -ENOTSUPP;

  spin_lock_irqsave(&pfc->lock, flags);
  bias = pfc->info->ops->get_bias(pfc, _pin);
  spin_unlock_irqrestore(&pfc->lock, flags);

  if (bias != param)
   return -EINVAL;

  arg = 0;
  break;
 }

 case 129: {
  int ret;

  ret = sh_pfc_pinconf_get_drive_strength(pfc, _pin);
  if (ret < 0)
   return ret;

  arg = ret;
  break;
 }

 case 128: {
  u32 pocctrl, val;
  int bit;

  if (!pfc->info->ops || !pfc->info->ops->pin_to_pocctrl)
   return -ENOTSUPP;

  bit = pfc->info->ops->pin_to_pocctrl(pfc, _pin, &pocctrl);
  if (WARN(bit < 0, "invalid pin %#x", _pin))
   return bit;

  spin_lock_irqsave(&pfc->lock, flags);
  val = sh_pfc_read(pfc, pocctrl);
  spin_unlock_irqrestore(&pfc->lock, flags);

  arg = (val & BIT(bit)) ? 3300 : 1800;
  break;
 }

 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);
 return 0;
}

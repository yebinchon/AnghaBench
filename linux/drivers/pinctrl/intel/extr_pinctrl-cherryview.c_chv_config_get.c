
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int CHV_PADCTRL0 ;
 int CHV_PADCTRL0_GPIOCFG_HIZ ;
 int CHV_PADCTRL0_GPIOCFG_MASK ;
 int CHV_PADCTRL0_GPIOCFG_SHIFT ;



 int CHV_PADCTRL0_TERM_MASK ;
 int CHV_PADCTRL0_TERM_SHIFT ;
 int CHV_PADCTRL0_TERM_UP ;
 int CHV_PADCTRL1 ;
 int CHV_PADCTRL1_ODEN ;
 int EINVAL ;
 int ENOTSUPP ;





 int chv_lock ;
 int chv_padreg (struct chv_pinctrl*,unsigned int,int ) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct chv_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int ) ;

__attribute__((used)) static int chv_config_get(struct pinctrl_dev *pctldev, unsigned int pin,
     unsigned long *config)
{
 struct chv_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned long flags;
 u32 ctrl0, ctrl1;
 u16 arg = 0;
 u32 term;

 raw_spin_lock_irqsave(&chv_lock, flags);
 ctrl0 = readl(chv_padreg(pctrl, pin, CHV_PADCTRL0));
 ctrl1 = readl(chv_padreg(pctrl, pin, CHV_PADCTRL1));
 raw_spin_unlock_irqrestore(&chv_lock, flags);

 term = (ctrl0 & CHV_PADCTRL0_TERM_MASK) >> CHV_PADCTRL0_TERM_SHIFT;

 switch (param) {
 case 132:
  if (term)
   return -EINVAL;
  break;

 case 129:
  if (!(ctrl0 & CHV_PADCTRL0_TERM_UP))
   return -EINVAL;

  switch (term) {
  case 134:
   arg = 20000;
   break;
  case 133:
   arg = 5000;
   break;
  case 135:
   arg = 1000;
   break;
  }

  break;

 case 130:
  if (!term || (ctrl0 & CHV_PADCTRL0_TERM_UP))
   return -EINVAL;

  switch (term) {
  case 134:
   arg = 20000;
   break;
  case 133:
   arg = 5000;
   break;
  }

  break;

 case 128:
  if (!(ctrl1 & CHV_PADCTRL1_ODEN))
   return -EINVAL;
  break;

 case 131: {
  u32 cfg;

  cfg = ctrl0 & CHV_PADCTRL0_GPIOCFG_MASK;
  cfg >>= CHV_PADCTRL0_GPIOCFG_SHIFT;
  if (cfg != CHV_PADCTRL0_GPIOCFG_HIZ)
   return -EINVAL;

  break;
 }

 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);
 return 0;
}

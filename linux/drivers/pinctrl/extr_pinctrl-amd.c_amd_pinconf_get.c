
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct amd_gpio {TYPE_1__* pdev; int lock; scalar_t__ base; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int dev; } ;


 unsigned int BIT (int) ;
 unsigned int DB_TMR_OUT_MASK ;
 unsigned int DRV_STRENGTH_SEL_MASK ;
 unsigned int DRV_STRENGTH_SEL_OFF ;
 int ENOTSUPP ;




 unsigned int PULL_DOWN_ENABLE_OFF ;
 unsigned int PULL_UP_SEL_OFF ;
 int dev_err (int *,char*,int) ;
 unsigned long pinconf_to_config_packed (int,unsigned int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct amd_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int amd_pinconf_get(struct pinctrl_dev *pctldev,
     unsigned int pin,
     unsigned long *config)
{
 u32 pin_reg;
 unsigned arg;
 unsigned long flags;
 struct amd_gpio *gpio_dev = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);

 raw_spin_lock_irqsave(&gpio_dev->lock, flags);
 pin_reg = readl(gpio_dev->base + pin*4);
 raw_spin_unlock_irqrestore(&gpio_dev->lock, flags);
 switch (param) {
 case 128:
  arg = pin_reg & DB_TMR_OUT_MASK;
  break;

 case 131:
  arg = (pin_reg >> PULL_DOWN_ENABLE_OFF) & BIT(0);
  break;

 case 130:
  arg = (pin_reg >> PULL_UP_SEL_OFF) & (BIT(0) | BIT(1));
  break;

 case 129:
  arg = (pin_reg >> DRV_STRENGTH_SEL_OFF) & DRV_STRENGTH_SEL_MASK;
  break;

 default:
  dev_err(&gpio_dev->pdev->dev, "Invalid config param %04x\n",
   param);
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}

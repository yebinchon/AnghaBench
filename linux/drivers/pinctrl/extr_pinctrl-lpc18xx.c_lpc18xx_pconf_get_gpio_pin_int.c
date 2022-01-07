
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct lpc18xx_scu_data {scalar_t__ base; } ;


 int ENOTSUPP ;
 scalar_t__ LPC18XX_SCU_PINTSEL0 ;
 scalar_t__ LPC18XX_SCU_PINTSEL1 ;
 int lpc18xx_get_pintsel (scalar_t__,int ,int*) ;
 int lpc18xx_gpio_to_pintsel_val (int) ;
 int lpc18xx_pin_to_gpio (struct pinctrl_dev*,unsigned int) ;
 struct lpc18xx_scu_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int lpc18xx_pconf_get_gpio_pin_int(struct pinctrl_dev *pctldev,
       int *arg, unsigned pin)
{
 struct lpc18xx_scu_data *scu = pinctrl_dev_get_drvdata(pctldev);
 int gpio, ret;
 u32 val;

 gpio = lpc18xx_pin_to_gpio(pctldev, pin);
 if (gpio < 0)
  return -ENOTSUPP;

 val = lpc18xx_gpio_to_pintsel_val(gpio);





 *arg = 0;
 ret = lpc18xx_get_pintsel(scu->base + LPC18XX_SCU_PINTSEL0, val, arg);
 if (ret == 0)
  return ret;

 return lpc18xx_get_pintsel(scu->base + LPC18XX_SCU_PINTSEL1, val, arg);
}

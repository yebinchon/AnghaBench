
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct at91_pinctrl {int dev; } ;


 int dev_dbg (int ,char*,unsigned int) ;
 struct at91_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static void at91_gpio_disable_free(struct pinctrl_dev *pctldev,
       struct pinctrl_gpio_range *range,
       unsigned offset)
{
 struct at91_pinctrl *npct = pinctrl_dev_get_drvdata(pctldev);

 dev_dbg(npct->dev, "disable pin %u as GPIO\n", offset);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {int dummy; } ;


 int chv_gpio_clear_triggering (struct chv_pinctrl*,unsigned int) ;
 int chv_lock ;
 int chv_pad_locked (struct chv_pinctrl*,unsigned int) ;
 struct chv_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void chv_gpio_disable_free(struct pinctrl_dev *pctldev,
      struct pinctrl_gpio_range *range,
      unsigned int offset)
{
 struct chv_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 unsigned long flags;

 raw_spin_lock_irqsave(&chv_lock, flags);

 if (!chv_pad_locked(pctrl, offset))
  chv_gpio_clear_triggering(pctrl, offset);

 raw_spin_unlock_irqrestore(&chv_lock, flags);
}

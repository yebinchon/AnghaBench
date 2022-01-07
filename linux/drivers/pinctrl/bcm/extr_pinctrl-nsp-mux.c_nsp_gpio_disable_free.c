
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct nsp_pinctrl {int lock; int base0; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {int* drv_data; } ;


 struct nsp_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void nsp_gpio_disable_free(struct pinctrl_dev *pctrl_dev,
      struct pinctrl_gpio_range *range,
      unsigned int pin)
{
 struct nsp_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);
 u32 *gpio_select = pctrl_dev->desc->pins[pin].drv_data;
 u32 val;
 unsigned long flags;

 spin_lock_irqsave(&pinctrl->lock, flags);
 val = readl(pinctrl->base0);
 if ((val & (1 << pin)) == (*gpio_select << pin)) {
  val &= ~(1 << pin);
  if (!(*gpio_select))
   val |= (1 << pin);
  writel(val, pinctrl->base0);
 }
 spin_unlock_irqrestore(&pinctrl->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {int dummy; } ;


 int CHV_PADCTRL0 ;
 int CHV_PADCTRL0_GPIOCFG_GPO ;
 int CHV_PADCTRL0_GPIOCFG_MASK ;
 int CHV_PADCTRL0_GPIOCFG_SHIFT ;
 int CHV_PADCTRL0_GPIORXSTATE ;
 int CHV_PADCTRL0_GPIOTXSTATE ;
 int chv_lock ;
 int chv_padreg (struct chv_pinctrl*,unsigned int,int ) ;
 struct chv_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int ) ;

__attribute__((used)) static int chv_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct chv_pinctrl *pctrl = gpiochip_get_data(chip);
 unsigned long flags;
 u32 ctrl0, cfg;

 raw_spin_lock_irqsave(&chv_lock, flags);
 ctrl0 = readl(chv_padreg(pctrl, offset, CHV_PADCTRL0));
 raw_spin_unlock_irqrestore(&chv_lock, flags);

 cfg = ctrl0 & CHV_PADCTRL0_GPIOCFG_MASK;
 cfg >>= CHV_PADCTRL0_GPIOCFG_SHIFT;

 if (cfg == CHV_PADCTRL0_GPIOCFG_GPO)
  return !!(ctrl0 & CHV_PADCTRL0_GPIOTXSTATE);
 return !!(ctrl0 & CHV_PADCTRL0_GPIORXSTATE);
}

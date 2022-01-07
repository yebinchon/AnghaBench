
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
 int chv_lock ;
 int chv_padreg (struct chv_pinctrl*,unsigned int,int ) ;
 struct chv_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int ) ;

__attribute__((used)) static int chv_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
{
 struct chv_pinctrl *pctrl = gpiochip_get_data(chip);
 u32 ctrl0, direction;
 unsigned long flags;

 raw_spin_lock_irqsave(&chv_lock, flags);
 ctrl0 = readl(chv_padreg(pctrl, offset, CHV_PADCTRL0));
 raw_spin_unlock_irqrestore(&chv_lock, flags);

 direction = ctrl0 & CHV_PADCTRL0_GPIOCFG_MASK;
 direction >>= CHV_PADCTRL0_GPIOCFG_SHIFT;

 return direction != CHV_PADCTRL0_GPIOCFG_GPO;
}

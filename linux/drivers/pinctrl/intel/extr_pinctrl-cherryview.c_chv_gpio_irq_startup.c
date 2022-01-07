
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct chv_pinctrl {unsigned int* intr_lines; } ;
typedef int irq_flow_handler_t ;


 int CHV_PADCTRL0 ;
 int CHV_PADCTRL0_INTSEL_MASK ;
 int CHV_PADCTRL0_INTSEL_SHIFT ;
 int CHV_PADCTRL1 ;
 int CHV_PADCTRL1_INTWAKECFG_LEVEL ;
 scalar_t__ IRQ_TYPE_NONE ;
 int chv_gpio_irq_unmask (struct irq_data*) ;
 int chv_lock ;
 int chv_padreg (struct chv_pinctrl*,unsigned int,int ) ;
 struct chv_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 scalar_t__ irqd_get_trigger_type (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int ) ;

__attribute__((used)) static unsigned chv_gpio_irq_startup(struct irq_data *d)
{
 if (irqd_get_trigger_type(d) == IRQ_TYPE_NONE) {
  struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
  struct chv_pinctrl *pctrl = gpiochip_get_data(gc);
  unsigned int pin = irqd_to_hwirq(d);
  irq_flow_handler_t handler;
  unsigned long flags;
  u32 intsel, value;

  raw_spin_lock_irqsave(&chv_lock, flags);
  intsel = readl(chv_padreg(pctrl, pin, CHV_PADCTRL0));
  intsel &= CHV_PADCTRL0_INTSEL_MASK;
  intsel >>= CHV_PADCTRL0_INTSEL_SHIFT;

  value = readl(chv_padreg(pctrl, pin, CHV_PADCTRL1));
  if (value & CHV_PADCTRL1_INTWAKECFG_LEVEL)
   handler = handle_level_irq;
  else
   handler = handle_edge_irq;

  if (!pctrl->intr_lines[intsel]) {
   irq_set_handler_locked(d, handler);
   pctrl->intr_lines[intsel] = pin;
  }
  raw_spin_unlock_irqrestore(&chv_lock, flags);
 }

 chv_gpio_irq_unmask(d);
 return 0;
}

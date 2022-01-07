
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmfx_pinctrl {size_t* irq_toggle_edge; size_t* irq_gpi_type; size_t* irq_gpi_evt; size_t* irq_gpi_src; int lock; TYPE_1__* stmfx; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int map; } ;


 int NR_GPIO_REGS ;
 int STMFX_REG_IRQ_GPI_EVT ;
 int STMFX_REG_IRQ_GPI_SRC ;
 int STMFX_REG_IRQ_GPI_TYPE ;
 size_t get_mask (int ) ;
 size_t get_reg (int ) ;
 struct stmfx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,int ,size_t*,int ) ;
 scalar_t__ stmfx_gpio_get (struct gpio_chip*,int ) ;

__attribute__((used)) static void stmfx_pinctrl_irq_bus_sync_unlock(struct irq_data *data)
{
 struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
 struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
 u32 reg = get_reg(data->hwirq);
 u32 mask = get_mask(data->hwirq);






 if (pctl->irq_toggle_edge[reg] & mask) {
  if (stmfx_gpio_get(gpio_chip, data->hwirq))
   pctl->irq_gpi_type[reg] &= ~mask;
  else
   pctl->irq_gpi_type[reg] |= mask;
 }

 regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_EVT,
     pctl->irq_gpi_evt, NR_GPIO_REGS);
 regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_TYPE,
     pctl->irq_gpi_type, NR_GPIO_REGS);
 regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
     pctl->irq_gpi_src, NR_GPIO_REGS);

 mutex_unlock(&pctl->lock);
}

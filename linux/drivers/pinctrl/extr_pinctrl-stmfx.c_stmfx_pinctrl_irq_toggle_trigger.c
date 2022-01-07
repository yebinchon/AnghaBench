
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmfx_pinctrl {size_t* irq_toggle_edge; size_t* irq_gpi_type; TYPE_1__* stmfx; int gpio_chip; } ;
struct TYPE_2__ {int map; } ;


 scalar_t__ STMFX_REG_IRQ_GPI_TYPE ;
 size_t get_mask (unsigned int) ;
 size_t get_reg (unsigned int) ;
 int regmap_write_bits (int ,scalar_t__,size_t,size_t) ;
 int stmfx_gpio_get (int *,unsigned int) ;

__attribute__((used)) static void stmfx_pinctrl_irq_toggle_trigger(struct stmfx_pinctrl *pctl,
          unsigned int offset)
{
 u32 reg = get_reg(offset);
 u32 mask = get_mask(offset);
 int val;

 if (!(pctl->irq_toggle_edge[reg] & mask))
  return;

 val = stmfx_gpio_get(&pctl->gpio_chip, offset);
 if (val < 0)
  return;

 if (val) {
  pctl->irq_gpi_type[reg] &= mask;
  regmap_write_bits(pctl->stmfx->map,
      STMFX_REG_IRQ_GPI_TYPE + reg,
      mask, 0);

 } else {
  pctl->irq_gpi_type[reg] |= mask;
  regmap_write_bits(pctl->stmfx->map,
      STMFX_REG_IRQ_GPI_TYPE + reg,
      mask, mask);
 }
}

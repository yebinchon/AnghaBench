
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pin_bank {int irq_domain; scalar_t__ eint_offset; TYPE_1__* irq_chip; scalar_t__ eint_base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct exynos_muxed_weint_data {int nr_banks; struct samsung_pin_bank** banks; } ;
struct TYPE_2__ {scalar_t__ eint_mask; scalar_t__ eint_pend; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int exynos_irq_demux_eint (unsigned long,int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct exynos_muxed_weint_data* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static void exynos_irq_demux_eint16_31(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct exynos_muxed_weint_data *eintd = irq_desc_get_handler_data(desc);
 unsigned long pend;
 unsigned long mask;
 int i;

 chained_irq_enter(chip, desc);

 for (i = 0; i < eintd->nr_banks; ++i) {
  struct samsung_pin_bank *b = eintd->banks[i];
  pend = readl(b->eint_base + b->irq_chip->eint_pend
    + b->eint_offset);
  mask = readl(b->eint_base + b->irq_chip->eint_mask
    + b->eint_offset);
  exynos_irq_demux_eint(pend & ~mask, b->irq_domain);
 }

 chained_irq_exit(chip, desc);
}

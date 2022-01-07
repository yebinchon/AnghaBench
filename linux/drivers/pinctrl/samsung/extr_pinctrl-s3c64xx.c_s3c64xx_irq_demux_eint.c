
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c64xx_eint0_data {int * pins; int * domains; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ EINT0MASK_REG ;
 scalar_t__ EINT0PEND_REG ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int fls (unsigned int) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct s3c64xx_eint0_data* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,int ) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline void s3c64xx_irq_demux_eint(struct irq_desc *desc, u32 range)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct s3c64xx_eint0_data *data = irq_desc_get_handler_data(desc);
 struct samsung_pinctrl_drv_data *drvdata = data->drvdata;
 unsigned int pend, mask;

 chained_irq_enter(chip, desc);

 pend = readl(drvdata->virt_base + EINT0PEND_REG);
 mask = readl(drvdata->virt_base + EINT0MASK_REG);

 pend = pend & range & ~mask;
 pend &= range;

 while (pend) {
  unsigned int virq, irq;

  irq = fls(pend) - 1;
  pend &= ~(1 << irq);
  virq = irq_linear_revmap(data->domains[irq], data->pins[irq]);




  BUG_ON(!virq);

  generic_handle_irq(virq);
 }

 chained_irq_exit(chip, desc);
}

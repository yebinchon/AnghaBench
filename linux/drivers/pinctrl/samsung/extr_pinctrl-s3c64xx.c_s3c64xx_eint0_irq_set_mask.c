
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c64xx_eint0_domain_data {int* eints; TYPE_1__* bank; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {struct samsung_pinctrl_drv_data* drvdata; } ;


 scalar_t__ EINT0MASK_REG ;
 struct s3c64xx_eint0_domain_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void s3c64xx_eint0_irq_set_mask(struct irq_data *irqd, bool mask)
{
 struct s3c64xx_eint0_domain_data *ddata =
     irq_data_get_irq_chip_data(irqd);
 struct samsung_pinctrl_drv_data *d = ddata->bank->drvdata;
 u32 val;

 val = readl(d->virt_base + EINT0MASK_REG);
 if (mask)
  val |= 1 << ddata->eints[irqd->hwirq];
 else
  val &= ~(1 << ddata->eints[irqd->hwirq]);
 writel(val, d->virt_base + EINT0MASK_REG);
}

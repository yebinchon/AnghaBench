
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct samsung_pin_bank {unsigned char eint_offset; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_data {unsigned char hwirq; } ;


 scalar_t__ EINTPEND_REG ;
 struct samsung_pin_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void s3c24xx_eint_ack(struct irq_data *data)
{
 struct samsung_pin_bank *bank = irq_data_get_irq_chip_data(data);
 struct samsung_pinctrl_drv_data *d = bank->drvdata;
 unsigned char index = bank->eint_offset + data->hwirq;

 writel(1UL << index, d->virt_base + EINTPEND_REG);
}

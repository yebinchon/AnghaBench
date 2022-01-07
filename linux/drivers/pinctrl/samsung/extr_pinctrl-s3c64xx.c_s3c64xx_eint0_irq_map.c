
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pin_bank {int eint_mask; } ;
struct s3c64xx_eint0_domain_data {struct samsung_pin_bank* bank; } ;
struct irq_domain {struct s3c64xx_eint0_domain_data* host_data; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct s3c64xx_eint0_domain_data*) ;
 int s3c64xx_eint0_irq_chip ;

__attribute__((used)) static int s3c64xx_eint0_irq_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw)
{
 struct s3c64xx_eint0_domain_data *ddata = h->host_data;
 struct samsung_pin_bank *bank = ddata->bank;

 if (!(bank->eint_mask & (1 << hw)))
  return -EINVAL;

 irq_set_chip_and_handler(virq,
    &s3c64xx_eint0_irq_chip, handle_level_irq);
 irq_set_chip_data(virq, ddata);

 return 0;
}

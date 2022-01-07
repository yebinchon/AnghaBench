
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pin_bank {TYPE_1__* irq_domain; } ;
struct s3c24xx_eint_domain_data {struct s3c24xx_eint_data* eint_data; } ;
struct s3c24xx_eint_data {int* parents; } ;
struct irq_data {size_t hwirq; } ;
struct irq_chip {int (* irq_unmask ) (int ) ;} ;
struct TYPE_2__ {struct s3c24xx_eint_domain_data* host_data; } ;


 struct samsung_pin_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct irq_chip* irq_get_chip (int) ;
 int irq_get_irq_data (int) ;
 int stub1 (int ) ;

__attribute__((used)) static void s3c2410_eint0_3_unmask(struct irq_data *data)
{
 struct samsung_pin_bank *bank = irq_data_get_irq_chip_data(data);
 struct s3c24xx_eint_domain_data *ddata = bank->irq_domain->host_data;
 struct s3c24xx_eint_data *eint_data = ddata->eint_data;
 int parent_irq = eint_data->parents[data->hwirq];
 struct irq_chip *parent_chip = irq_get_chip(parent_irq);

 parent_chip->irq_unmask(irq_get_irq_data(parent_irq));
}

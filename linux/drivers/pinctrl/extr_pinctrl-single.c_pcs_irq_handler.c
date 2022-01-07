
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_soc_data {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ pcs_irq_handle (struct pcs_soc_data*) ;

__attribute__((used)) static irqreturn_t pcs_irq_handler(int irq, void *d)
{
 struct pcs_soc_data *pcs_soc = d;

 return pcs_irq_handle(pcs_soc) ? IRQ_HANDLED : IRQ_NONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int generic_handle_irq (unsigned int) ;
 scalar_t__ irq_desc_get_handler_data (struct irq_desc*) ;

__attribute__((used)) static void intc_redirect_irq(struct irq_desc *desc)
{
 generic_handle_irq((unsigned int)irq_desc_get_handler_data(desc));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 unsigned int IRQ_TYPE_EDGE_BOTH ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static void s3c64xx_irq_set_handler(struct irq_data *d, unsigned int type)
{

 if (type & IRQ_TYPE_EDGE_BOTH)
  irq_set_handler_locked(d, handle_edge_irq);
 else
  irq_set_handler_locked(d, handle_level_irq);
}

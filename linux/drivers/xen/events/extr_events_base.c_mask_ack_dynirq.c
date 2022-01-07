
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int ack_dynirq (struct irq_data*) ;
 int disable_dynirq (struct irq_data*) ;

__attribute__((used)) static void mask_ack_dynirq(struct irq_data *data)
{
 disable_dynirq(data);
 ack_dynirq(data);
}

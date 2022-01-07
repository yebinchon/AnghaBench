
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_chip_ack_parent (struct irq_data*) ;

__attribute__((used)) static void msi_ack(struct irq_data *d)
{
 irq_chip_ack_parent(d);
}

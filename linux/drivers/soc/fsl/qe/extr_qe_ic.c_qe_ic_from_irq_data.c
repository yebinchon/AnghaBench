
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_ic {int dummy; } ;
struct irq_data {int dummy; } ;


 struct qe_ic* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static inline struct qe_ic *qe_ic_from_irq_data(struct irq_data *d)
{
 return irq_data_get_irq_chip_data(d);
}

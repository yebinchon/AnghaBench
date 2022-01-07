
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_ic {int dummy; } ;


 struct qe_ic* irq_get_chip_data (unsigned int) ;

__attribute__((used)) static inline struct qe_ic *qe_ic_from_irq(unsigned int virq)
{
 return irq_get_chip_data(virq);
}

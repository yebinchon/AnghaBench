
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eint {int domain; } ;


 int EINVAL ;
 int irq_find_mapping (int ,unsigned long) ;

int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
{
 int irq;

 irq = irq_find_mapping(eint->domain, eint_n);
 if (!irq)
  return -EINVAL;

 return irq;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {scalar_t__* dsci; } ;


 int is_thinint_irq (struct qdio_irq*) ;
 scalar_t__ shared_ind (struct qdio_irq*) ;

int test_nonshared_ind(struct qdio_irq *irq_ptr)
{
 if (!is_thinint_irq(irq_ptr))
  return 0;
 if (shared_ind(irq_ptr))
  return 0;
 if (*irq_ptr->dsci)
  return 1;
 else
  return 0;
}

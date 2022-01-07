
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int dsci; } ;


 int is_thinint_irq (struct qdio_irq*) ;
 scalar_t__ shared_ind (struct qdio_irq*) ;
 int xchg (int ,int ) ;

void clear_nonshared_ind(struct qdio_irq *irq_ptr)
{
 if (!is_thinint_irq(irq_ptr))
  return;
 if (shared_ind(irq_ptr))
  return;
 xchg(irq_ptr->dsci, 0);
}

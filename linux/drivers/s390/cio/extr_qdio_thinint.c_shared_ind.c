
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int dummy; } ;


 scalar_t__ has_multiple_inq_on_dsci (struct qdio_irq*) ;
 scalar_t__ references_shared_dsci (struct qdio_irq*) ;

__attribute__((used)) static inline int shared_ind(struct qdio_irq *irq_ptr)
{
 return references_shared_dsci(irq_ptr) ||
  has_multiple_inq_on_dsci(irq_ptr);
}

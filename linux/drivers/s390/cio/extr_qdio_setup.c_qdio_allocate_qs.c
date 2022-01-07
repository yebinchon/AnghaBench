
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int output_qs; int input_qs; } ;


 int __qdio_allocate_qs (int ,int) ;

int qdio_allocate_qs(struct qdio_irq *irq_ptr, int nr_input_qs, int nr_output_qs)
{
 int rc;

 rc = __qdio_allocate_qs(irq_ptr->input_qs, nr_input_qs);
 if (rc)
  return rc;
 rc = __qdio_allocate_qs(irq_ptr->output_qs, nr_output_qs);
 return rc;
}

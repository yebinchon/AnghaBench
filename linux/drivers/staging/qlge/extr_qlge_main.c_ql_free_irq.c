
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ql_adapter {int intr_count; int * rx_ring; TYPE_2__* pdev; TYPE_1__* msi_x_entry; int flags; struct intr_context* intr_context; } ;
struct intr_context {scalar_t__ hooked; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int QL_MSIX_ENABLED ;
 int free_irq (int ,int *) ;
 int ql_disable_msix (struct ql_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ql_free_irq(struct ql_adapter *qdev)
{
 int i;
 struct intr_context *intr_context = &qdev->intr_context[0];

 for (i = 0; i < qdev->intr_count; i++, intr_context++) {
  if (intr_context->hooked) {
   if (test_bit(QL_MSIX_ENABLED, &qdev->flags)) {
    free_irq(qdev->msi_x_entry[i].vector,
      &qdev->rx_ring[i]);
   } else {
    free_irq(qdev->pdev->irq, &qdev->rx_ring[0]);
   }
  }
 }
 ql_disable_msix(qdev);
}

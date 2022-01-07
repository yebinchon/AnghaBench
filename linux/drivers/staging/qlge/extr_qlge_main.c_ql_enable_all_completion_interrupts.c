
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql_adapter {int intr_count; TYPE_1__* intr_context; int flags; } ;
struct TYPE_2__ {int irq_cnt; } ;


 int QL_MSIX_ENABLED ;
 int atomic_set (int *,int) ;
 int ql_enable_completion_interrupt (struct ql_adapter*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ql_enable_all_completion_interrupts(struct ql_adapter *qdev)
{
 int i;
 for (i = 0; i < qdev->intr_count; i++) {




  if (unlikely(!test_bit(QL_MSIX_ENABLED, &qdev->flags) ||
   i == 0))
   atomic_set(&qdev->intr_context[i].irq_cnt, 1);
  ql_enable_completion_interrupt(qdev, i);
 }

}

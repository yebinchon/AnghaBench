
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {unsigned long flags; TYPE_1__* sh_info; int op_work; } ;
struct TYPE_2__ {int flags; } ;


 int _PCIB_op_pending ;
 int _PDEVF_op_active ;
 int _XEN_PCIB_active ;
 int _XEN_PCIF_active ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;
 int wake_up (int *) ;
 int xen_pcibk_aer_wait_queue ;

void xen_pcibk_test_and_schedule_op(struct xen_pcibk_device *pdev)
{


 if (test_bit(_XEN_PCIF_active, (unsigned long *)&pdev->sh_info->flags)
     && !test_and_set_bit(_PDEVF_op_active, &pdev->flags)) {
  schedule_work(&pdev->op_work);
 }


 if (!test_bit(_XEN_PCIB_active, (unsigned long *)&pdev->sh_info->flags)
     && test_bit(_PCIB_op_pending, &pdev->flags)) {
  wake_up(&xen_pcibk_aer_wait_queue);
 }
}

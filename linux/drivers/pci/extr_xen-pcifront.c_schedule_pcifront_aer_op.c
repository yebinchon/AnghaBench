
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcifront_device {int op_work; TYPE_2__* xdev; int flags; TYPE_1__* sh_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int flags; } ;


 int _PDEVB_op_active ;
 int _XEN_PCIB_active ;
 int dev_dbg (int *,char*) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void schedule_pcifront_aer_op(struct pcifront_device *pdev)
{
 if (test_bit(_XEN_PCIB_active, (unsigned long *)&pdev->sh_info->flags)
  && !test_and_set_bit(_PDEVB_op_active, &pdev->flags)) {
  dev_dbg(&pdev->xdev->dev, "schedule aer frontend job\n");
  schedule_work(&pdev->op_work);
 }
}

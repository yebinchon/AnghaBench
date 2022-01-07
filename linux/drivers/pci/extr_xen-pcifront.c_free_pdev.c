
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {scalar_t__ irq; scalar_t__ evtchn; scalar_t__ gnt_ref; TYPE_1__* xdev; scalar_t__ sh_info; int op_work; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ INVALID_EVTCHN ;
 scalar_t__ INVALID_GRANT_REF ;
 int cancel_work_sync (int *) ;
 int dev_dbg (int *,char*,struct pcifront_device*) ;
 int dev_set_drvdata (int *,int *) ;
 int free_page (unsigned long) ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int kfree (struct pcifront_device*) ;
 int pcifront_free_roots (struct pcifront_device*) ;
 int unbind_from_irqhandler (scalar_t__,struct pcifront_device*) ;
 int xenbus_free_evtchn (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void free_pdev(struct pcifront_device *pdev)
{
 dev_dbg(&pdev->xdev->dev, "freeing pdev @ 0x%p\n", pdev);

 pcifront_free_roots(pdev);

 cancel_work_sync(&pdev->op_work);

 if (pdev->irq >= 0)
  unbind_from_irqhandler(pdev->irq, pdev);

 if (pdev->evtchn != INVALID_EVTCHN)
  xenbus_free_evtchn(pdev->xdev, pdev->evtchn);

 if (pdev->gnt_ref != INVALID_GRANT_REF)
  gnttab_end_foreign_access(pdev->gnt_ref, 0 ,
       (unsigned long)pdev->sh_info);
 else
  free_page((unsigned long)pdev->sh_info);

 dev_set_drvdata(&pdev->xdev->dev, ((void*)0));

 kfree(pdev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;


 int flush_work (int *) ;
 int nvme_try_sched_reset (TYPE_1__*) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void nvme_reset_done(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);

 if (!nvme_try_sched_reset(&dev->ctrl))
  flush_work(&dev->ctrl.reset_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;


 int flush_work (int *) ;
 struct nvme_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void nvme_error_resume(struct pci_dev *pdev)
{
 struct nvme_dev *dev = pci_get_drvdata(pdev);

 flush_work(&dev->ctrl.reset_work);
}

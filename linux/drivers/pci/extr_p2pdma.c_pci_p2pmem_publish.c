
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* p2pdma; } ;
struct TYPE_2__ {int p2pmem_published; } ;



void pci_p2pmem_publish(struct pci_dev *pdev, bool publish)
{
 if (pdev->p2pdma)
  pdev->p2pdma->p2pmem_published = publish;
}

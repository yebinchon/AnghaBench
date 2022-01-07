
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* p2pdma; } ;
struct TYPE_2__ {scalar_t__ p2pmem_published; } ;



bool pci_has_p2pmem(struct pci_dev *pdev)
{
 return pdev->p2pdma && pdev->p2pdma->p2pmem_published;
}

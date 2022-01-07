
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ dma; } ;
typedef TYPE_1__ avmcard ;


 int b1pci_remove (struct pci_dev*) ;
 int b1pciv4_remove (struct pci_dev*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void b1pci_pci_remove(struct pci_dev *pdev)
{
 b1pci_remove(pdev);

}

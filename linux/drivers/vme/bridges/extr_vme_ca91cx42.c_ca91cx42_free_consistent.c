
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int pci_free_consistent (struct pci_dev*,size_t,void*,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void ca91cx42_free_consistent(struct device *parent, size_t size,
 void *vaddr, dma_addr_t dma)
{
 struct pci_dev *pdev;


 pdev = to_pci_dev(parent);

 pci_free_consistent(pdev, size, vaddr, dma);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_MULTIMEDIA_OTHER ;
 int pci_info (struct pci_dev*,char*,int,int) ;

__attribute__((used)) static void quirk_tw686x_class(struct pci_dev *pdev)
{
 u32 class = pdev->class;


 pdev->class = (PCI_CLASS_MULTIMEDIA_OTHER << 8) | 0x01;
 pci_info(pdev, "TW686x PCI class overridden (%#08x -> %#08x)\n",
   class, pdev->class);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hpx_type1 {int dummy; } ;


 int PCI_CAP_ID_PCIX ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_warn (struct pci_dev*,char*) ;

__attribute__((used)) static void program_hpx_type1(struct pci_dev *dev, struct hpx_type1 *hpx)
{
 int pos;

 if (!hpx)
  return;

 pos = pci_find_capability(dev, PCI_CAP_ID_PCIX);
 if (!pos)
  return;

 pci_warn(dev, "PCI-X settings not supported\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int multifunction; } ;
 int pci_acs_flags_enabled (struct pci_dev*,int ) ;
 int pci_dev_specific_acs_enabled (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_pcie_type (struct pci_dev*) ;

bool pci_acs_enabled(struct pci_dev *pdev, u16 acs_flags)
{
 int ret;

 ret = pci_dev_specific_acs_enabled(pdev, acs_flags);
 if (ret >= 0)
  return ret > 0;






 if (!pci_is_pcie(pdev))
  return 0;

 switch (pci_pcie_type(pdev)) {





 case 133:






 case 132:
 case 131:
  return 0;





 case 136:
 case 129:
  return pci_acs_flags_enabled(pdev, acs_flags);







 case 135:
 case 128:
 case 134:
 case 130:
  if (!pdev->multifunction)
   break;

  return pci_acs_flags_enabled(pdev, acs_flags);
 }





 return 1;
}

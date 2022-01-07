
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int dev_is_pci (struct device*) ;
 scalar_t__ pci_dev_id (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static bool chromeos_laptop_match_adapter_devid(struct device *dev, u32 devid)
{
 struct pci_dev *pdev;

 if (!dev_is_pci(dev))
  return 0;

 pdev = to_pci_dev(dev);
 return devid == pci_dev_id(pdev);
}

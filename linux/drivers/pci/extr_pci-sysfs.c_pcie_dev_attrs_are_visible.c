
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct pci_dev {int dummy; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;


 struct device* kobj_to_dev (struct kobject*) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static umode_t pcie_dev_attrs_are_visible(struct kobject *kobj,
       struct attribute *a, int n)
{
 struct device *dev = kobj_to_dev(kobj);
 struct pci_dev *pdev = to_pci_dev(dev);

 if (pci_is_pcie(pdev))
  return a->mode;

 return 0;
}

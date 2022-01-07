
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_NLW ;
 int PCI_EXP_LNKSTA_NLW_SHIFT ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t current_link_width_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 u16 linkstat;
 int err;

 err = pcie_capability_read_word(pci_dev, PCI_EXP_LNKSTA, &linkstat);
 if (err)
  return -EINVAL;

 return sprintf(buf, "%u\n",
  (linkstat & PCI_EXP_LNKSTA_NLW) >> PCI_EXP_LNKSTA_NLW_SHIFT);
}

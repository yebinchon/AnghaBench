
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
 int PCI_EXP_LNKSTA_CLS ;





 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int sprintf (char*,char*,char const*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t current_link_speed_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 u16 linkstat;
 int err;
 const char *speed;

 err = pcie_capability_read_word(pci_dev, PCI_EXP_LNKSTA, &linkstat);
 if (err)
  return -EINVAL;

 switch (linkstat & PCI_EXP_LNKSTA_CLS) {
 case 130:
  speed = "32 GT/s";
  break;
 case 132:
  speed = "16 GT/s";
  break;
 case 128:
  speed = "8 GT/s";
  break;
 case 129:
  speed = "5 GT/s";
  break;
 case 131:
  speed = "2.5 GT/s";
  break;
 default:
  speed = "Unknown speed";
 }

 return sprintf(buf, "%s\n", speed);
}

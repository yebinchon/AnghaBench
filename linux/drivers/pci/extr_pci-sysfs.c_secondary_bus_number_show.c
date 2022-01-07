
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PCI_SECONDARY_BUS ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t secondary_bus_number_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 u8 sec_bus;
 int err;

 err = pci_read_config_byte(pci_dev, PCI_SECONDARY_BUS, &sec_bus);
 if (err)
  return -EINVAL;

 return sprintf(buf, "%u\n", sec_bus);
}

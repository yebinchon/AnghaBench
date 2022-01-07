
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int vendor; int device; int subsystem_vendor; int subsystem_device; int class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int,int,int,int,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);

 return sprintf(buf, "pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02X\n",
         pci_dev->vendor, pci_dev->device,
         pci_dev->subsystem_vendor, pci_dev->subsystem_device,
         (u8)(pci_dev->class >> 16), (u8)(pci_dev->class >> 8),
         (u8)(pci_dev->class));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* PCIE_SPEED2STR (int ) ;
 int pcie_get_speed_cap (struct pci_dev*) ;
 int sprintf (char*,char*,char*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t max_link_speed_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);

 return sprintf(buf, "%s\n", PCIE_SPEED2STR(pcie_get_speed_cap(pdev)));
}

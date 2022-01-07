
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bus {int dummy; } ;


 int pci_scan_bridge_extend (struct pci_bus*,struct pci_dev*,int,int ,int) ;

int pci_scan_bridge(struct pci_bus *bus, struct pci_dev *dev, int max, int pass)
{
 return pci_scan_bridge_extend(bus, dev, max, 0, pass);
}

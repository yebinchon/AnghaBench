
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static int pci_stub_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 pci_info(dev, "claimed by stub\n");
 return 0;
}

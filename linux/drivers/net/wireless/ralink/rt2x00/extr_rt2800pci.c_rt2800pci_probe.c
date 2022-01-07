
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int rt2800pci_ops ;
 int rt2x00pci_probe (struct pci_dev*,int *) ;

__attribute__((used)) static int rt2800pci_probe(struct pci_dev *pci_dev,
      const struct pci_device_id *id)
{
 return rt2x00pci_probe(pci_dev, &rt2800pci_ops);
}

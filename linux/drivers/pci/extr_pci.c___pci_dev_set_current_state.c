
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int current_state; } ;
typedef int pci_power_t ;



__attribute__((used)) static int __pci_dev_set_current_state(struct pci_dev *dev, void *data)
{
 pci_power_t state = *(pci_power_t *)data;

 dev->current_state = state;
 return 0;
}

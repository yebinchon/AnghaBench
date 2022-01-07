
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_saved_state {int dummy; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct pci_saved_state*) ;
 int pci_load_saved_state (struct pci_dev*,struct pci_saved_state*) ;

int pci_load_and_free_saved_state(struct pci_dev *dev,
      struct pci_saved_state **state)
{
 int ret = pci_load_saved_state(dev, *state);
 kfree(*state);
 *state = ((void*)0);
 return ret;
}

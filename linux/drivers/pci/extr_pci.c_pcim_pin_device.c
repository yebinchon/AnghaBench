
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int pinned; int enabled; } ;
struct pci_dev {int dummy; } ;


 int WARN_ON (int) ;
 struct pci_devres* find_pci_dr (struct pci_dev*) ;

void pcim_pin_device(struct pci_dev *pdev)
{
 struct pci_devres *dr;

 dr = find_pci_dr(pdev);
 WARN_ON(!dr || !dr->enabled);
 if (dr)
  dr->pinned = 1;
}

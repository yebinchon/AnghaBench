
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
typedef int pci_power_t ;
struct TYPE_2__ {int (* get_state ) (struct pci_dev*) ;} ;


 int PCI_UNKNOWN ;
 TYPE_1__* pci_platform_pm ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline pci_power_t platform_pci_get_power_state(struct pci_dev *dev)
{
 return pci_platform_pm ? pci_platform_pm->get_state(dev) : PCI_UNKNOWN;
}

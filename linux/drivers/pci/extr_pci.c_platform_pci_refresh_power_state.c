
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* refresh_state ) (struct pci_dev*) ;} ;


 TYPE_1__* pci_platform_pm ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline void platform_pci_refresh_power_state(struct pci_dev *dev)
{
 if (pci_platform_pm && pci_platform_pm->refresh_state)
  pci_platform_pm->refresh_state(dev);
}

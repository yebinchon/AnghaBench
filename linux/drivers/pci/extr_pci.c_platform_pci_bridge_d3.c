
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* bridge_d3 ) (struct pci_dev*) ;} ;


 TYPE_1__* pci_platform_pm ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline bool platform_pci_bridge_d3(struct pci_dev *dev)
{
 return pci_platform_pm ? pci_platform_pm->bridge_d3(dev) : 0;
}

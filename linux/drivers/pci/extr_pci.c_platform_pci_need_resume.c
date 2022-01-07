
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* need_resume ) (struct pci_dev*) ;} ;


 TYPE_1__* pci_platform_pm ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static inline bool platform_pci_need_resume(struct pci_dev *dev)
{
 return pci_platform_pm ? pci_platform_pm->need_resume(dev) : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* set_wakeup ) (struct pci_dev*,int) ;} ;


 int ENODEV ;
 TYPE_1__* pci_platform_pm ;
 int stub1 (struct pci_dev*,int) ;

__attribute__((used)) static inline int platform_pci_set_wakeup(struct pci_dev *dev, bool enable)
{
 return pci_platform_pm ?
   pci_platform_pm->set_wakeup(dev, enable) : -ENODEV;
}

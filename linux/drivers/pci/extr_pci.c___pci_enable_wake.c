
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int wakeup_prepared; } ;
typedef int pci_power_t ;


 int pci_pme_active (struct pci_dev*,int) ;
 scalar_t__ pci_pme_capable (struct pci_dev*,int ) ;
 int pci_power_manageable (struct pci_dev*) ;
 int platform_pci_set_wakeup (struct pci_dev*,int) ;

__attribute__((used)) static int __pci_enable_wake(struct pci_dev *dev, pci_power_t state, bool enable)
{
 int ret = 0;
 if (!pci_power_manageable(dev))
  return 0;


 if (!!enable == !!dev->wakeup_prepared)
  return 0;







 if (enable) {
  int error;

  if (pci_pme_capable(dev, state))
   pci_pme_active(dev, 1);
  else
   ret = 1;
  error = platform_pci_set_wakeup(dev, 1);
  if (ret)
   ret = error;
  if (!ret)
   dev->wakeup_prepared = 1;
 } else {
  platform_pci_set_wakeup(dev, 0);
  pci_pme_active(dev, 0);
  dev->wakeup_prepared = 0;
 }

 return ret;
}

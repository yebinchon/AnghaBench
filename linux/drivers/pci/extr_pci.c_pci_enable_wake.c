
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_power_t ;


 int EINVAL ;
 int __pci_enable_wake (struct pci_dev*,int ,int) ;
 int device_may_wakeup (int *) ;

int pci_enable_wake(struct pci_dev *pci_dev, pci_power_t state, bool enable)
{
 if (enable && !device_may_wakeup(&pci_dev->dev))
  return -EINVAL;

 return __pci_enable_wake(pci_dev, state, enable);
}

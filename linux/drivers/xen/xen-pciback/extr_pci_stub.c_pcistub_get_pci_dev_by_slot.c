
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {int dummy; } ;
struct pcistub_device {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct pcistub_device* pcistub_device_find_locked (int,int,int,int) ;
 struct pci_dev* pcistub_device_get_pci_dev (struct xen_pcibk_device*,struct pcistub_device*) ;
 int pcistub_devices_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct pci_dev *pcistub_get_pci_dev_by_slot(struct xen_pcibk_device *pdev,
         int domain, int bus,
         int slot, int func)
{
 struct pcistub_device *psdev;
 struct pci_dev *found_dev = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&pcistub_devices_lock, flags);

 psdev = pcistub_device_find_locked(domain, bus, slot, func);
 if (psdev)
  found_dev = pcistub_device_get_pci_dev(pdev, psdev);

 spin_unlock_irqrestore(&pcistub_devices_lock, flags);
 return found_dev;
}

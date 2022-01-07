
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {int dummy; } ;
struct pcistub_device {int lock; struct pci_dev* dev; struct xen_pcibk_device* pdev; } ;
struct pci_dev {int dummy; } ;


 int pcistub_device_get (struct pcistub_device*) ;
 int pcistub_device_put (struct pcistub_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct pci_dev *pcistub_device_get_pci_dev(struct xen_pcibk_device *pdev,
        struct pcistub_device *psdev)
{
 struct pci_dev *pci_dev = ((void*)0);
 unsigned long flags;

 pcistub_device_get(psdev);

 spin_lock_irqsave(&psdev->lock, flags);
 if (!psdev->pdev) {
  psdev->pdev = pdev;
  pci_dev = psdev->dev;
 }
 spin_unlock_irqrestore(&psdev->lock, flags);

 if (!pci_dev)
  pcistub_device_put(psdev);

 return pci_dev;
}

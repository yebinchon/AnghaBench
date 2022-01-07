
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pme_poll; int dev; } ;


 scalar_t__ pci_check_pme_status (struct pci_dev*) ;
 int pci_wakeup_event (struct pci_dev*) ;
 int pm_request_resume (int *) ;

__attribute__((used)) static int pci_pme_wakeup(struct pci_dev *dev, void *pme_poll_reset)
{
 if (pme_poll_reset && dev->pme_poll)
  dev->pme_poll = 0;

 if (pci_check_pme_status(dev)) {
  pci_wakeup_event(dev);
  pm_request_resume(&dev->dev);
 }
 return 0;
}

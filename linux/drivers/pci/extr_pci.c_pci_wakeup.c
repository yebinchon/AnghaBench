
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int pci_wakeup_event (struct pci_dev*) ;
 int pm_request_resume (int *) ;

__attribute__((used)) static int pci_wakeup(struct pci_dev *pci_dev, void *ign)
{
 pci_wakeup_event(pci_dev);
 pm_request_resume(&pci_dev->dev);
 return 0;
}

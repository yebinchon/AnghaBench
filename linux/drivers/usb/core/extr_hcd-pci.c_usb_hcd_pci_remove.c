
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hs_companion; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_dev {scalar_t__ class; int dev; } ;


 scalar_t__ CL_EHCI ;
 int companions_rwsem ;
 int dev_set_drvdata (int *,int *) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int ehci_remove ;
 int for_each_companion (struct pci_dev*,struct usb_hcd*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ pci_dev_run_wake (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct usb_hcd* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_get_noresume (int *) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int usb_hcd_irq (int ,struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

void usb_hcd_pci_remove(struct pci_dev *dev)
{
 struct usb_hcd *hcd;

 hcd = pci_get_drvdata(dev);
 if (!hcd)
  return;

 if (pci_dev_run_wake(dev))
  pm_runtime_get_noresume(&dev->dev);





 local_irq_disable();
 usb_hcd_irq(0, hcd);
 local_irq_enable();


 if (dev->class == CL_EHCI) {
  down_write(&companions_rwsem);
  for_each_companion(dev, hcd, ehci_remove);
  usb_remove_hcd(hcd);
  dev_set_drvdata(&dev->dev, ((void*)0));
  up_write(&companions_rwsem);
 } else {

  down_read(&companions_rwsem);
  hcd->self.hs_companion = ((void*)0);
  usb_remove_hcd(hcd);
  dev_set_drvdata(&dev->dev, ((void*)0));
  up_read(&companions_rwsem);
 }
 usb_put_hcd(hcd);
 pci_disable_device(dev);
}

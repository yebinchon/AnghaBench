
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int dev_count ;
 int free_irq (int ,int *) ;
 int irq ;
 int misc_deregister (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int temp_miscdev ;
 int type ;
 int unregister_reboot_notifier (int *) ;
 int wdtpci_miscdev ;
 int wdtpci_notifier ;

__attribute__((used)) static void wdtpci_remove_one(struct pci_dev *pdev)
{


 misc_deregister(&wdtpci_miscdev);
 if (type == 501)
  misc_deregister(&temp_miscdev);
 unregister_reboot_notifier(&wdtpci_notifier);
 free_irq(irq, &wdtpci_miscdev);
 pci_release_region(pdev, 2);
 pci_disable_device(pdev);
 dev_count--;
}

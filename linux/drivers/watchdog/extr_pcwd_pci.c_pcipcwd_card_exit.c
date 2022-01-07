
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ supports_temp; } ;


 int cards_found ;
 int misc_deregister (int *) ;
 int nowayout ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pcipcwd_miscdev ;
 int pcipcwd_notifier ;
 TYPE_1__ pcipcwd_private ;
 int pcipcwd_stop () ;
 int pcipcwd_temp_miscdev ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void pcipcwd_card_exit(struct pci_dev *pdev)
{

 if (!nowayout)
  pcipcwd_stop();


 misc_deregister(&pcipcwd_miscdev);
 if (pcipcwd_private.supports_temp)
  misc_deregister(&pcipcwd_temp_miscdev);
 unregister_reboot_notifier(&pcipcwd_notifier);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 cards_found--;
}

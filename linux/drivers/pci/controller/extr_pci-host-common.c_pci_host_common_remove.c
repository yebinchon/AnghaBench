
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pci_bus {int dummy; } ;


 int pci_lock_rescan_remove () ;
 int pci_remove_root_bus (struct pci_bus*) ;
 int pci_stop_root_bus (struct pci_bus*) ;
 int pci_unlock_rescan_remove () ;
 struct pci_bus* platform_get_drvdata (struct platform_device*) ;

int pci_host_common_remove(struct platform_device *pdev)
{
 struct pci_bus *bus = platform_get_drvdata(pdev);

 pci_lock_rescan_remove();
 pci_stop_root_bus(bus);
 pci_remove_root_bus(bus);
 pci_unlock_rescan_remove();

 return 0;
}

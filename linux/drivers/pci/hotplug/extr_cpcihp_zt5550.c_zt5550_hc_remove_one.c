
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int bus0 ;
 int cpci_hp_stop () ;
 int cpci_hp_unregister_bus (int ) ;
 int cpci_hp_unregister_controller (int *) ;
 int zt5550_hc_cleanup () ;
 int zt5550_hpc ;

__attribute__((used)) static void zt5550_hc_remove_one(struct pci_dev *pdev)
{
 cpci_hp_stop();
 cpci_hp_unregister_bus(bus0);
 cpci_hp_unregister_controller(&zt5550_hpc);
 zt5550_hc_cleanup();
}

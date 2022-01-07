
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int driver; } ;


 int driver_attr_irq_handler_state ;
 int driver_attr_irq_handlers ;
 int driver_attr_new_slot ;
 int driver_attr_permissive ;
 int driver_attr_quirks ;
 int driver_attr_remove_slot ;
 int driver_attr_slots ;
 int driver_remove_file (int *,int *) ;
 int pci_unregister_driver (TYPE_1__*) ;
 TYPE_1__ xen_pcibk_pci_driver ;

__attribute__((used)) static void pcistub_exit(void)
{
 driver_remove_file(&xen_pcibk_pci_driver.driver, &driver_attr_new_slot);
 driver_remove_file(&xen_pcibk_pci_driver.driver,
      &driver_attr_remove_slot);
 driver_remove_file(&xen_pcibk_pci_driver.driver, &driver_attr_slots);
 driver_remove_file(&xen_pcibk_pci_driver.driver, &driver_attr_quirks);
 driver_remove_file(&xen_pcibk_pci_driver.driver,
      &driver_attr_permissive);
 driver_remove_file(&xen_pcibk_pci_driver.driver,
      &driver_attr_irq_handlers);
 driver_remove_file(&xen_pcibk_pci_driver.driver,
      &driver_attr_irq_handler_state);
 pci_unregister_driver(&xen_pcibk_pci_driver);
}

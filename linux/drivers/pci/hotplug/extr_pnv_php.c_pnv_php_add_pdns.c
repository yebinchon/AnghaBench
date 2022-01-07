
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {int dn; int bus; } ;
struct pci_controller {int dummy; } ;


 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_traverse_device_nodes (int ,int ,struct pci_controller*) ;
 int pnv_php_add_one_pdn ;

__attribute__((used)) static void pnv_php_add_pdns(struct pnv_php_slot *slot)
{
 struct pci_controller *hose = pci_bus_to_host(slot->bus);

 pci_traverse_device_nodes(slot->dn, pnv_php_add_one_pdn, hose);
}

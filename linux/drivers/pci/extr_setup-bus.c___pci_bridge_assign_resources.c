
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; struct pci_bus* subordinate; } ;
struct pci_bus {int number; } ;
struct list_head {int dummy; } ;




 int __pci_bus_assign_resources (struct pci_bus*,struct list_head*,struct list_head*) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pci_info (struct pci_dev const*,char*,int ,int ) ;
 int pci_setup_bridge (struct pci_bus*) ;
 int pci_setup_cardbus (struct pci_bus*) ;
 int pdev_assign_resources_sorted (struct pci_dev*,struct list_head*,struct list_head*) ;

__attribute__((used)) static void __pci_bridge_assign_resources(const struct pci_dev *bridge,
       struct list_head *add_head,
       struct list_head *fail_head)
{
 struct pci_bus *b;

 pdev_assign_resources_sorted((struct pci_dev *)bridge,
      add_head, fail_head);

 b = bridge->subordinate;
 if (!b)
  return;

 __pci_bus_assign_resources(b, add_head, fail_head);

 switch (bridge->class >> 8) {
 case 128:
  pci_setup_bridge(b);
  break;

 case 129:
  pci_setup_cardbus(b);
  break;

 default:
  pci_info(bridge, "not setting up bridge for bus %04x:%02x\n",
    pci_domain_nr(b), b->number);
  break;
 }
}

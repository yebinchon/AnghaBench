
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcie_link_state {int sibling; struct pcie_link_state* parent; struct pcie_link_state* root; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* subordinate; TYPE_2__* bus; } ;
struct TYPE_4__ {struct pci_dev* self; } ;
struct TYPE_3__ {int devices; } ;


 int aspm_lock ;
 int down_read (int *) ;
 int free_link_state (struct pcie_link_state*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pcie_config_aspm_link (struct pcie_link_state*,int ) ;
 int pcie_config_aspm_path (struct pcie_link_state*) ;
 int pcie_update_aspm_capable (struct pcie_link_state*) ;
 int up_read (int *) ;

void pcie_aspm_exit_link_state(struct pci_dev *pdev)
{
 struct pci_dev *parent = pdev->bus->self;
 struct pcie_link_state *link, *root, *parent_link;

 if (!parent || !parent->link_state)
  return;

 down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);




 if (!list_empty(&parent->subordinate->devices))
  goto out;

 link = parent->link_state;
 root = link->root;
 parent_link = link->parent;


 pcie_config_aspm_link(link, 0);
 list_del(&link->sibling);

 free_link_state(link);


 if (parent_link) {
  pcie_update_aspm_capable(root);
  pcie_config_aspm_path(parent_link);
 }
out:
 mutex_unlock(&aspm_lock);
 up_read(&pci_bus_sem);
}

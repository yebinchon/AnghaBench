
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_switch {TYPE_2__* tb; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {TYPE_1__* nhi; } ;
struct TYPE_3__ {int pdev; } ;


 struct pci_dev* pci_find_pcie_root_port (int ) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void nvm_authenticate_complete(struct tb_switch *sw)
{
 struct pci_dev *root_port;

 root_port = pci_find_pcie_root_port(sw->tb->nhi->pdev);
 if (root_port)
  pm_runtime_put(&root_port->dev);
}

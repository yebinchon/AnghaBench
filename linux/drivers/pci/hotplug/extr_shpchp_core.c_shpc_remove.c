
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ shpc_managed; } ;
struct controller {TYPE_1__* hpc_ops; } ;
struct TYPE_2__ {int (* release_ctlr ) (struct controller*) ;} ;


 int kfree (struct controller*) ;
 struct controller* pci_get_drvdata (struct pci_dev*) ;
 int shpchp_remove_ctrl_files (struct controller*) ;
 int stub1 (struct controller*) ;

__attribute__((used)) static void shpc_remove(struct pci_dev *dev)
{
 struct controller *ctrl = pci_get_drvdata(dev);

 dev->shpc_managed = 0;
 shpchp_remove_ctrl_files(ctrl);
 ctrl->hpc_ops->release_ctlr(ctrl);
 kfree(ctrl);
}

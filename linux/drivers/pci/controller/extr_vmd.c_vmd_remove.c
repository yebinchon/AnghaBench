
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmd_dev {int irq_domain; int bus; TYPE_2__* dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int irq_domain_remove (int ) ;
 struct vmd_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;
 int sysfs_remove_link (int *,char*) ;
 int vmd_cleanup_srcu (struct vmd_dev*) ;
 int vmd_detach_resources (struct vmd_dev*) ;
 int vmd_teardown_dma_ops (struct vmd_dev*) ;

__attribute__((used)) static void vmd_remove(struct pci_dev *dev)
{
 struct vmd_dev *vmd = pci_get_drvdata(dev);

 sysfs_remove_link(&vmd->dev->dev.kobj, "domain");
 pci_stop_root_bus(vmd->bus);
 pci_remove_root_bus(vmd->bus);
 vmd_cleanup_srcu(vmd);
 vmd_teardown_dma_ops(vmd);
 vmd_detach_resources(vmd);
 irq_domain_remove(vmd->irq_domain);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_dev {TYPE_1__* dev; } ;
struct pci_dev {int bus; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 struct pci_dev* to_pci_dev (struct device*) ;
 struct vmd_dev* vmd_from_bus (int ) ;

__attribute__((used)) static struct device *to_vmd_dev(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct vmd_dev *vmd = vmd_from_bus(pdev->bus);

 return &vmd->dev->dev;
}

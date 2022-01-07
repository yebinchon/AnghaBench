
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_pci_fill_info {size_t cur; size_t max; TYPE_1__* devices; } ;
struct pci_dev {int devfn; TYPE_2__* bus; int dev; } ;
struct iommu_group {int dummy; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int devfn; int bus; int segment; int group_id; } ;


 int EAGAIN ;
 int EPERM ;
 struct iommu_group* iommu_group_get (int *) ;
 int iommu_group_id (struct iommu_group*) ;
 int iommu_group_put (struct iommu_group*) ;
 int pci_domain_nr (TYPE_2__*) ;

__attribute__((used)) static int vfio_pci_fill_devs(struct pci_dev *pdev, void *data)
{
 struct vfio_pci_fill_info *fill = data;
 struct iommu_group *iommu_group;

 if (fill->cur == fill->max)
  return -EAGAIN;

 iommu_group = iommu_group_get(&pdev->dev);
 if (!iommu_group)
  return -EPERM;

 fill->devices[fill->cur].group_id = iommu_group_id(iommu_group);
 fill->devices[fill->cur].segment = pci_domain_nr(pdev->bus);
 fill->devices[fill->cur].bus = pdev->bus->number;
 fill->devices[fill->cur].devfn = pdev->devfn;
 fill->cur++;
 iommu_group_put(iommu_group);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmd_dev {int msix_count; } ;
struct pci_dev {int bus; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
typedef int msi_alloc_info_t ;


 int memset (int *,int ,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct vmd_dev* vmd_from_bus (int ) ;

__attribute__((used)) static int vmd_msi_prepare(struct irq_domain *domain, struct device *dev,
      int nvec, msi_alloc_info_t *arg)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct vmd_dev *vmd = vmd_from_bus(pdev->bus);

 if (nvec > vmd->msix_count)
  return vmd->msix_count;

 memset(arg, 0, sizeof(*arg));
 return 0;
}

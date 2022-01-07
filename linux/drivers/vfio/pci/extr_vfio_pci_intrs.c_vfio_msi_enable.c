
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_irq_ctx {int dummy; } ;
struct vfio_pci_device {int num_ctx; scalar_t__ msi_qmax; int irq_type; int ctx; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PCI_IRQ_MSI ;
 unsigned int PCI_IRQ_MSIX ;
 int VFIO_PCI_MSIX_IRQ_INDEX ;
 int VFIO_PCI_MSI_IRQ_INDEX ;
 scalar_t__ fls (int) ;
 int is_irq_none (struct vfio_pci_device*) ;
 int kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,unsigned int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static int vfio_msi_enable(struct vfio_pci_device *vdev, int nvec, bool msix)
{
 struct pci_dev *pdev = vdev->pdev;
 unsigned int flag = msix ? PCI_IRQ_MSIX : PCI_IRQ_MSI;
 int ret;

 if (!is_irq_none(vdev))
  return -EINVAL;

 vdev->ctx = kcalloc(nvec, sizeof(struct vfio_pci_irq_ctx), GFP_KERNEL);
 if (!vdev->ctx)
  return -ENOMEM;


 ret = pci_alloc_irq_vectors(pdev, 1, nvec, flag);
 if (ret < nvec) {
  if (ret > 0)
   pci_free_irq_vectors(pdev);
  kfree(vdev->ctx);
  return ret;
 }

 vdev->num_ctx = nvec;
 vdev->irq_type = msix ? VFIO_PCI_MSIX_IRQ_INDEX :
    VFIO_PCI_MSI_IRQ_INDEX;

 if (!msix) {




  vdev->msi_qmax = fls(nvec * 2 - 1) - 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic {unsigned int wq_count; unsigned int cq_count; unsigned int intr_count; int vdev; int shost; int err_intr_offset; int pdev; int intr; int wq; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int PCI_IRQ_MSIX ;
 unsigned int SNIC_CQ_IO_CMPL_MAX ;
 int SNIC_ISR_DBG (int ,char*) ;
 int SNIC_MSIX_ERR_NOTIFY ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int VNIC_DEV_INTR_MODE_UNKNOWN ;
 scalar_t__ pci_alloc_irq_vectors (int ,unsigned int,unsigned int,int ) ;
 int svnic_dev_set_intr_mode (int ,int ) ;

int
snic_set_intr_mode(struct snic *snic)
{
 unsigned int n = ARRAY_SIZE(snic->wq);
 unsigned int m = SNIC_CQ_IO_CMPL_MAX;
 unsigned int vecs = n + m + 1;





 BUILD_BUG_ON((ARRAY_SIZE(snic->wq) + SNIC_CQ_IO_CMPL_MAX) >
   ARRAY_SIZE(snic->intr));

 if (snic->wq_count < n || snic->cq_count < n + m)
  goto fail;

 if (pci_alloc_irq_vectors(snic->pdev, vecs, vecs, PCI_IRQ_MSIX) < 0)
  goto fail;

 snic->wq_count = n;
 snic->cq_count = n + m;
 snic->intr_count = vecs;
 snic->err_intr_offset = SNIC_MSIX_ERR_NOTIFY;

 SNIC_ISR_DBG(snic->shost, "Using MSI-X Interrupts\n");
 svnic_dev_set_intr_mode(snic->vdev, VNIC_DEV_INTR_MODE_MSIX);
 return 0;
fail:
 svnic_dev_set_intr_mode(snic->vdev, VNIC_DEV_INTR_MODE_UNKNOWN);
 return -EINVAL;
}

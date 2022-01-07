
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {unsigned int rq_count; unsigned int raw_wq_count; unsigned int wq_copy_count; unsigned int cq_count; unsigned int wq_count; int intr_count; int vdev; TYPE_1__* lport; scalar_t__ err_intr_offset; int pdev; int wq_copy; int wq; int rq; } ;
struct TYPE_2__ {int host; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int FNIC_ISR_DBG (int ,int ,char*) ;
 scalar_t__ FNIC_MSIX_ERR_NOTIFY ;
 int KERN_DEBUG ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int VNIC_DEV_INTR_MODE_INTX ;
 int VNIC_DEV_INTR_MODE_MSI ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int VNIC_DEV_INTR_MODE_UNKNOWN ;
 int pci_alloc_irq_vectors (int ,int,int,int ) ;
 int vnic_dev_set_intr_mode (int ,int ) ;

int fnic_set_intr_mode(struct fnic *fnic)
{
 unsigned int n = ARRAY_SIZE(fnic->rq);
 unsigned int m = ARRAY_SIZE(fnic->wq);
 unsigned int o = ARRAY_SIZE(fnic->wq_copy);
 if (fnic->rq_count >= n &&
     fnic->raw_wq_count >= m &&
     fnic->wq_copy_count >= o &&
     fnic->cq_count >= n + m + o) {
  int vecs = n + m + o + 1;

  if (pci_alloc_irq_vectors(fnic->pdev, vecs, vecs,
    PCI_IRQ_MSIX) == vecs) {
   fnic->rq_count = n;
   fnic->raw_wq_count = m;
   fnic->wq_copy_count = o;
   fnic->wq_count = m + o;
   fnic->cq_count = n + m + o;
   fnic->intr_count = vecs;
   fnic->err_intr_offset = FNIC_MSIX_ERR_NOTIFY;

   FNIC_ISR_DBG(KERN_DEBUG, fnic->lport->host,
         "Using MSI-X Interrupts\n");
   vnic_dev_set_intr_mode(fnic->vdev,
            VNIC_DEV_INTR_MODE_MSIX);
   return 0;
  }
 }





 if (fnic->rq_count >= 1 &&
     fnic->raw_wq_count >= 1 &&
     fnic->wq_copy_count >= 1 &&
     fnic->cq_count >= 3 &&
     fnic->intr_count >= 1 &&
     pci_alloc_irq_vectors(fnic->pdev, 1, 1, PCI_IRQ_MSI) == 1) {
  fnic->rq_count = 1;
  fnic->raw_wq_count = 1;
  fnic->wq_copy_count = 1;
  fnic->wq_count = 2;
  fnic->cq_count = 3;
  fnic->intr_count = 1;
  fnic->err_intr_offset = 0;

  FNIC_ISR_DBG(KERN_DEBUG, fnic->lport->host,
        "Using MSI Interrupts\n");
  vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_MSI);

  return 0;
 }
 if (fnic->rq_count >= 1 &&
     fnic->raw_wq_count >= 1 &&
     fnic->wq_copy_count >= 1 &&
     fnic->cq_count >= 3 &&
     fnic->intr_count >= 3) {

  fnic->rq_count = 1;
  fnic->raw_wq_count = 1;
  fnic->wq_copy_count = 1;
  fnic->cq_count = 3;
  fnic->intr_count = 3;

  FNIC_ISR_DBG(KERN_DEBUG, fnic->lport->host,
        "Using Legacy Interrupts\n");
  vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_INTX);

  return 0;
 }

 vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_UNKNOWN);

 return -EINVAL;
}

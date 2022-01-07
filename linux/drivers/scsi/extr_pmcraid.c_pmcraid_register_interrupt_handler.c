
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_isr_param {int hrrq_id; struct pmcraid_instance* drv_inst; } ;
struct TYPE_2__ {int host_ioa_interrupt_reg; } ;
struct pmcraid_instance {int num_hrrq; int interrupt_mode; struct pmcraid_isr_param* hrrq_vector; TYPE_1__ int_regs; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ msix_enabled; } ;
typedef int irq_handler_t ;


 int DOORBELL_INTR_MODE_MSIX ;
 unsigned int IRQF_SHARED ;
 unsigned int PCI_IRQ_LEGACY ;
 unsigned int PCI_IRQ_MSIX ;
 int PMCRAID_DRIVER_NAME ;
 int PMCRAID_NUM_MSIX_VECTORS ;
 int free_irq (int ,struct pmcraid_isr_param*) ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int ,unsigned int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 scalar_t__ pmcraid_enable_msix ;
 int pmcraid_isr ;
 int pmcraid_isr_msix ;
 int request_irq (int ,int ,unsigned int,int ,struct pmcraid_isr_param*) ;

__attribute__((used)) static int
pmcraid_register_interrupt_handler(struct pmcraid_instance *pinstance)
{
 struct pci_dev *pdev = pinstance->pdev;
 unsigned int irq_flag = PCI_IRQ_LEGACY, flag;
 int num_hrrq, rc, i;
 irq_handler_t isr;

 if (pmcraid_enable_msix)
  irq_flag |= PCI_IRQ_MSIX;

 num_hrrq = pci_alloc_irq_vectors(pdev, 1, PMCRAID_NUM_MSIX_VECTORS,
   irq_flag);
 if (num_hrrq < 0)
  return num_hrrq;

 if (pdev->msix_enabled) {
  flag = 0;
  isr = pmcraid_isr_msix;
 } else {
  flag = IRQF_SHARED;
  isr = pmcraid_isr;
 }

 for (i = 0; i < num_hrrq; i++) {
  struct pmcraid_isr_param *vec = &pinstance->hrrq_vector[i];

  vec->hrrq_id = i;
  vec->drv_inst = pinstance;
  rc = request_irq(pci_irq_vector(pdev, i), isr, flag,
    PMCRAID_DRIVER_NAME, vec);
  if (rc)
   goto out_unwind;
 }

 pinstance->num_hrrq = num_hrrq;
 if (pdev->msix_enabled) {
  pinstance->interrupt_mode = 1;
  iowrite32(DOORBELL_INTR_MODE_MSIX,
     pinstance->int_regs.host_ioa_interrupt_reg);
  ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
 }

 return 0;

out_unwind:
 while (--i > 0)
  free_irq(pci_irq_vector(pdev, i), &pinstance->hrrq_vector[i]);
 pci_free_irq_vectors(pdev);
 return rc;
}

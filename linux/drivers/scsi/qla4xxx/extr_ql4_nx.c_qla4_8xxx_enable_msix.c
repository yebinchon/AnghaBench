
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int pdev; } ;


 int KERN_WARNING ;
 int PCI_IRQ_MSIX ;
 int QLA_MSIX_ENTRIES ;
 int free_irq (int ,struct scsi_qla_host*) ;
 int pci_alloc_irq_vectors (int ,int ,int ,int ) ;
 int pci_free_irq_vectors (int ) ;
 int pci_irq_vector (int ,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,int ,int) ;
 int qla4_8xxx_default_intr_handler ;
 int qla4_8xxx_msix_rsp_q ;
 int request_irq (int ,int ,int ,char*,struct scsi_qla_host*) ;

int
qla4_8xxx_enable_msix(struct scsi_qla_host *ha)
{
 int ret;

 ret = pci_alloc_irq_vectors(ha->pdev, QLA_MSIX_ENTRIES,
   QLA_MSIX_ENTRIES, PCI_IRQ_MSIX);
 if (ret < 0) {
  ql4_printk(KERN_WARNING, ha,
      "MSI-X: Failed to enable support -- %d/%d\n",
      QLA_MSIX_ENTRIES, ret);
  return ret;
 }

 ret = request_irq(pci_irq_vector(ha->pdev, 0),
   qla4_8xxx_default_intr_handler, 0, "qla4xxx (default)",
   ha);
 if (ret)
  goto out_free_vectors;

 ret = request_irq(pci_irq_vector(ha->pdev, 1),
   qla4_8xxx_msix_rsp_q, 0, "qla4xxx (rsp_q)", ha);
 if (ret)
  goto out_free_default_irq;

 return 0;

out_free_default_irq:
 free_irq(pci_irq_vector(ha->pdev, 0), ha);
out_free_vectors:
 pci_free_irq_vectors(ha->pdev);
 return ret;
}

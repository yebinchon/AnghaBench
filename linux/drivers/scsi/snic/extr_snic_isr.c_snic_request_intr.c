
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snic {char* name; TYPE_1__* msix; int shost; int pdev; int vdev; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;
struct TYPE_2__ {int requested; struct snic* devid; int devname; int isr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_ERR (int ,char*,int,int) ;
 size_t SNIC_MSIX_ERR_NOTIFY ;
 size_t SNIC_MSIX_IO_CMPL ;
 size_t SNIC_MSIX_WQ ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int pci_irq_vector (int ,int) ;
 int request_irq (int ,int ,int ,int ,struct snic*) ;
 int snic_free_intr (struct snic*) ;
 int snic_isr_msix_err_notify ;
 int snic_isr_msix_io_cmpl ;
 int snic_isr_msix_wq ;
 int sprintf (int ,char*,char*) ;
 int svnic_dev_get_intr_mode (int ) ;

int
snic_request_intr(struct snic *snic)
{
 int ret = 0, i;
 enum vnic_dev_intr_mode intr_mode;

 intr_mode = svnic_dev_get_intr_mode(snic->vdev);
 SNIC_BUG_ON(intr_mode != VNIC_DEV_INTR_MODE_MSIX);
 sprintf(snic->msix[SNIC_MSIX_WQ].devname,
  "%.11s-scsi-wq",
  snic->name);
 snic->msix[SNIC_MSIX_WQ].isr = snic_isr_msix_wq;
 snic->msix[SNIC_MSIX_WQ].devid = snic;

 sprintf(snic->msix[SNIC_MSIX_IO_CMPL].devname,
  "%.11s-io-cmpl",
  snic->name);
 snic->msix[SNIC_MSIX_IO_CMPL].isr = snic_isr_msix_io_cmpl;
 snic->msix[SNIC_MSIX_IO_CMPL].devid = snic;

 sprintf(snic->msix[SNIC_MSIX_ERR_NOTIFY].devname,
  "%.11s-err-notify",
  snic->name);
 snic->msix[SNIC_MSIX_ERR_NOTIFY].isr = snic_isr_msix_err_notify;
 snic->msix[SNIC_MSIX_ERR_NOTIFY].devid = snic;

 for (i = 0; i < ARRAY_SIZE(snic->msix); i++) {
  ret = request_irq(pci_irq_vector(snic->pdev, i),
      snic->msix[i].isr,
      0,
      snic->msix[i].devname,
      snic->msix[i].devid);
  if (ret) {
   SNIC_HOST_ERR(snic->shost,
          "MSI-X: request_irq(%d) failed %d\n",
          i,
          ret);
   snic_free_intr(snic);
   break;
  }
  snic->msix[i].requested = 1;
 }

 return ret;
}

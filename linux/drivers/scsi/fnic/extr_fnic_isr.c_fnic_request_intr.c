
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fnic {char* name; TYPE_2__* msix; TYPE_1__* lport; int pdev; int vdev; } ;
struct TYPE_4__ {char* devname; int requested; struct fnic* devid; int * isr; } ;
struct TYPE_3__ {int host; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 char* DRV_NAME ;
 size_t FNIC_MSIX_ERR_NOTIFY ;
 size_t FNIC_MSIX_RQ ;
 size_t FNIC_MSIX_WQ ;
 size_t FNIC_MSIX_WQ_COPY ;
 int IRQF_SHARED ;
 int KERN_ERR ;



 int fnic_free_intr (struct fnic*) ;
 int fnic_isr_legacy ;
 int fnic_isr_msi ;
 int * fnic_isr_msix_err_notify ;
 int * fnic_isr_msix_rq ;
 int * fnic_isr_msix_wq ;
 int * fnic_isr_msix_wq_copy ;
 int pci_irq_vector (int ,int) ;
 int request_irq (int ,int *,int ,char*,struct fnic*) ;
 int shost_printk (int ,int ,char*,int) ;
 int sprintf (char*,char*,char*) ;
 int vnic_dev_get_intr_mode (int ) ;

int fnic_request_intr(struct fnic *fnic)
{
 int err = 0;
 int i;

 switch (vnic_dev_get_intr_mode(fnic->vdev)) {

 case 130:
  err = request_irq(pci_irq_vector(fnic->pdev, 0),
    &fnic_isr_legacy, IRQF_SHARED, DRV_NAME, fnic);
  break;

 case 129:
  err = request_irq(pci_irq_vector(fnic->pdev, 0), &fnic_isr_msi,
      0, fnic->name, fnic);
  break;

 case 128:

  sprintf(fnic->msix[FNIC_MSIX_RQ].devname,
   "%.11s-fcs-rq", fnic->name);
  fnic->msix[FNIC_MSIX_RQ].isr = fnic_isr_msix_rq;
  fnic->msix[FNIC_MSIX_RQ].devid = fnic;

  sprintf(fnic->msix[FNIC_MSIX_WQ].devname,
   "%.11s-fcs-wq", fnic->name);
  fnic->msix[FNIC_MSIX_WQ].isr = fnic_isr_msix_wq;
  fnic->msix[FNIC_MSIX_WQ].devid = fnic;

  sprintf(fnic->msix[FNIC_MSIX_WQ_COPY].devname,
   "%.11s-scsi-wq", fnic->name);
  fnic->msix[FNIC_MSIX_WQ_COPY].isr = fnic_isr_msix_wq_copy;
  fnic->msix[FNIC_MSIX_WQ_COPY].devid = fnic;

  sprintf(fnic->msix[FNIC_MSIX_ERR_NOTIFY].devname,
   "%.11s-err-notify", fnic->name);
  fnic->msix[FNIC_MSIX_ERR_NOTIFY].isr =
   fnic_isr_msix_err_notify;
  fnic->msix[FNIC_MSIX_ERR_NOTIFY].devid = fnic;

  for (i = 0; i < ARRAY_SIZE(fnic->msix); i++) {
   err = request_irq(pci_irq_vector(fnic->pdev, i),
       fnic->msix[i].isr, 0,
       fnic->msix[i].devname,
       fnic->msix[i].devid);
   if (err) {
    shost_printk(KERN_ERR, fnic->lport->host,
          "MSIX: request_irq"
          " failed %d\n", err);
    fnic_free_intr(fnic);
    break;
   }
   fnic->msix[i].requested = 1;
  }
  break;

 default:
  break;
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct ipr_ioa_cfg {int scan_enabled; int nvectors; int hrrq_num; TYPE_4__* host; scalar_t__ iopoll_weight; TYPE_3__* hrrq; scalar_t__ sis64; TYPE_2__* chip_cfg; int work_q; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_10__ {int host_lock; TYPE_1__ shost_dev; } ;
struct TYPE_9__ {int iopoll; } ;
struct TYPE_8__ {scalar_t__ iopoll_weight; } ;


 int __ipr_remove (struct pci_dev*) ;
 int ipr_create_dump_file (int *,int *) ;
 int ipr_create_trace_file (int *,int *) ;
 int ipr_dump_attr ;
 int ipr_ioa_async_err_log ;
 int ipr_iopoll ;
 int ipr_probe_ioa (struct pci_dev*,struct pci_device_id const*) ;
 int ipr_probe_ioa_part2 (struct ipr_ioa_cfg*) ;
 int ipr_remove_dump_file (int *,int *) ;
 int ipr_remove_trace_file (int *,int *) ;
 int ipr_trace_attr ;
 int irq_poll_init (int *,scalar_t__,int ) ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int schedule_work (int *) ;
 int scsi_add_host (TYPE_4__*,int *) ;
 int scsi_remove_host (TYPE_4__*) ;
 int scsi_scan_host (TYPE_4__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int sysfs_create_bin_file (int *,int *) ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static int ipr_probe(struct pci_dev *pdev, const struct pci_device_id *dev_id)
{
 struct ipr_ioa_cfg *ioa_cfg;
 unsigned long flags;
 int rc, i;

 rc = ipr_probe_ioa(pdev, dev_id);

 if (rc)
  return rc;

 ioa_cfg = pci_get_drvdata(pdev);
 rc = ipr_probe_ioa_part2(ioa_cfg);

 if (rc) {
  __ipr_remove(pdev);
  return rc;
 }

 rc = scsi_add_host(ioa_cfg->host, &pdev->dev);

 if (rc) {
  __ipr_remove(pdev);
  return rc;
 }

 rc = ipr_create_trace_file(&ioa_cfg->host->shost_dev.kobj,
       &ipr_trace_attr);

 if (rc) {
  scsi_remove_host(ioa_cfg->host);
  __ipr_remove(pdev);
  return rc;
 }

 rc = sysfs_create_bin_file(&ioa_cfg->host->shost_dev.kobj,
   &ipr_ioa_async_err_log);

 if (rc) {
  ipr_remove_dump_file(&ioa_cfg->host->shost_dev.kobj,
    &ipr_dump_attr);
  ipr_remove_trace_file(&ioa_cfg->host->shost_dev.kobj,
    &ipr_trace_attr);
  scsi_remove_host(ioa_cfg->host);
  __ipr_remove(pdev);
  return rc;
 }

 rc = ipr_create_dump_file(&ioa_cfg->host->shost_dev.kobj,
       &ipr_dump_attr);

 if (rc) {
  sysfs_remove_bin_file(&ioa_cfg->host->shost_dev.kobj,
          &ipr_ioa_async_err_log);
  ipr_remove_trace_file(&ioa_cfg->host->shost_dev.kobj,
          &ipr_trace_attr);
  scsi_remove_host(ioa_cfg->host);
  __ipr_remove(pdev);
  return rc;
 }
 spin_lock_irqsave(ioa_cfg->host->host_lock, flags);
 ioa_cfg->scan_enabled = 1;
 schedule_work(&ioa_cfg->work_q);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, flags);

 ioa_cfg->iopoll_weight = ioa_cfg->chip_cfg->iopoll_weight;

 if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
  for (i = 1; i < ioa_cfg->hrrq_num; i++) {
   irq_poll_init(&ioa_cfg->hrrq[i].iopoll,
     ioa_cfg->iopoll_weight, ipr_iopoll);
  }
 }

 scsi_scan_host(ioa_cfg->host);

 return 0;
}

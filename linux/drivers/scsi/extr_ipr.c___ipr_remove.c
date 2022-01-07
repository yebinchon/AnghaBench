
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int hrrq_num; scalar_t__ sdt_state; TYPE_2__* host; int queue; int used_res_q; scalar_t__ reset_work_q; int work_q; scalar_t__ in_reset_reload; int reset_wait_q; TYPE_1__* hrrq; } ;
struct TYPE_4__ {int * host_lock; } ;
struct TYPE_3__ {int removing_ioa; int _lock; } ;


 scalar_t__ ABORT_DUMP ;
 int ENTER ;
 int INIT_LIST_HEAD (int *) ;
 int IPR_SHUTDOWN_NORMAL ;
 int LEAVE ;
 scalar_t__ WAIT_FOR_DUMP ;
 int flush_work (int *) ;
 int flush_workqueue (scalar_t__) ;
 int ipr_driver_lock ;
 int ipr_free_all_resources (struct ipr_ioa_cfg*) ;
 int ipr_initiate_ioa_bringdown (struct ipr_ioa_cfg*,int ) ;
 int list_del (int *) ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;
 int wmb () ;

__attribute__((used)) static void __ipr_remove(struct pci_dev *pdev)
{
 unsigned long host_lock_flags = 0;
 struct ipr_ioa_cfg *ioa_cfg = pci_get_drvdata(pdev);
 int i;
 unsigned long driver_lock_flags;
 ENTER;

 spin_lock_irqsave(ioa_cfg->host->host_lock, host_lock_flags);
 while (ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, host_lock_flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
  spin_lock_irqsave(ioa_cfg->host->host_lock, host_lock_flags);
 }

 for (i = 0; i < ioa_cfg->hrrq_num; i++) {
  spin_lock(&ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].removing_ioa = 1;
  spin_unlock(&ioa_cfg->hrrq[i]._lock);
 }
 wmb();
 ipr_initiate_ioa_bringdown(ioa_cfg, IPR_SHUTDOWN_NORMAL);

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, host_lock_flags);
 wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
 flush_work(&ioa_cfg->work_q);
 if (ioa_cfg->reset_work_q)
  flush_workqueue(ioa_cfg->reset_work_q);
 INIT_LIST_HEAD(&ioa_cfg->used_res_q);
 spin_lock_irqsave(ioa_cfg->host->host_lock, host_lock_flags);

 spin_lock_irqsave(&ipr_driver_lock, driver_lock_flags);
 list_del(&ioa_cfg->queue);
 spin_unlock_irqrestore(&ipr_driver_lock, driver_lock_flags);

 if (ioa_cfg->sdt_state == ABORT_DUMP)
  ioa_cfg->sdt_state = WAIT_FOR_DUMP;
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, host_lock_flags);

 ipr_free_all_resources(ioa_cfg);

 LEAVE;
}

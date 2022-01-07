
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; int in_ioa_bringdown; int hrrq_num; TYPE_2__* host; int eeh_wait_q; TYPE_1__* hrrq; scalar_t__ reset_retries; scalar_t__ probe_done; } ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int _lock; scalar_t__ allow_cmds; } ;


 scalar_t__ ABORT_DUMP ;
 scalar_t__ IPR_NUM_RESET_RELOAD_RETRIES ;
 int IPR_SHUTDOWN_NONE ;
 scalar_t__ WAIT_FOR_DUMP ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wake_up_all (int *) ;
 int wmb () ;

__attribute__((used)) static void ipr_pci_perm_failure(struct pci_dev *pdev)
{
 unsigned long flags = 0;
 struct ipr_ioa_cfg *ioa_cfg = pci_get_drvdata(pdev);
 int i;

 spin_lock_irqsave(ioa_cfg->host->host_lock, flags);
 if (ioa_cfg->probe_done) {
  if (ioa_cfg->sdt_state == WAIT_FOR_DUMP)
   ioa_cfg->sdt_state = ABORT_DUMP;
  ioa_cfg->reset_retries = IPR_NUM_RESET_RELOAD_RETRIES - 1;
  ioa_cfg->in_ioa_bringdown = 1;
  for (i = 0; i < ioa_cfg->hrrq_num; i++) {
   spin_lock(&ioa_cfg->hrrq[i]._lock);
   ioa_cfg->hrrq[i].allow_cmds = 0;
   spin_unlock(&ioa_cfg->hrrq[i]._lock);
  }
  wmb();
  ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NONE);
 } else
  wake_up_all(&ioa_cfg->eeh_wait_q);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, flags);
}

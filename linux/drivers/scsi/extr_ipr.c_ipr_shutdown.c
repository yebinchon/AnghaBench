
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int nvectors; int hrrq_num; int pdev; scalar_t__ sis64; scalar_t__ in_reset_reload; int reset_wait_q; TYPE_2__* host; TYPE_1__* hrrq; scalar_t__ iopoll_weight; } ;
typedef enum ipr_shutdown_type { ____Placeholder_ipr_shutdown_type } ipr_shutdown_type ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int iopoll; } ;


 int IPR_SHUTDOWN_NORMAL ;
 int IPR_SHUTDOWN_QUIESCE ;
 scalar_t__ SYSTEM_RESTART ;
 scalar_t__ ipr_fast_reboot ;
 int ipr_free_irqs (struct ipr_ioa_cfg*) ;
 int ipr_initiate_ioa_bringdown (struct ipr_ioa_cfg*,int) ;
 int irq_poll_disable (int *) ;
 int pci_disable_device (int ) ;
 struct ipr_ioa_cfg* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ system_state ;
 int wait_event (int ,int) ;

__attribute__((used)) static void ipr_shutdown(struct pci_dev *pdev)
{
 struct ipr_ioa_cfg *ioa_cfg = pci_get_drvdata(pdev);
 unsigned long lock_flags = 0;
 enum ipr_shutdown_type shutdown_type = IPR_SHUTDOWN_NORMAL;
 int i;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 if (ioa_cfg->iopoll_weight && ioa_cfg->sis64 && ioa_cfg->nvectors > 1) {
  ioa_cfg->iopoll_weight = 0;
  for (i = 1; i < ioa_cfg->hrrq_num; i++)
   irq_poll_disable(&ioa_cfg->hrrq[i].iopoll);
 }

 while (ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
  spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 }

 if (ipr_fast_reboot && system_state == SYSTEM_RESTART && ioa_cfg->sis64)
  shutdown_type = IPR_SHUTDOWN_QUIESCE;

 ipr_initiate_ioa_bringdown(ioa_cfg, shutdown_type);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
 if (ipr_fast_reboot && system_state == SYSTEM_RESTART && ioa_cfg->sis64) {
  ipr_free_irqs(ioa_cfg);
  pci_disable_device(ioa_cfg->pdev);
 }
}

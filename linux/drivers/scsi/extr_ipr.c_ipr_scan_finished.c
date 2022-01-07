
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioa_cfg {int transop_timeout; scalar_t__ scan_done; TYPE_1__* hrrq; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
struct TYPE_2__ {scalar_t__ ioa_is_dead; } ;


 unsigned long HZ ;
 size_t IPR_INIT_HRRQ ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_scan_finished(struct Scsi_Host *shost, unsigned long elapsed_time)
{
 unsigned long lock_flags;
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) shost->hostdata;
 int rc = 0;

 spin_lock_irqsave(shost->host_lock, lock_flags);
 if (ioa_cfg->hrrq[IPR_INIT_HRRQ].ioa_is_dead || ioa_cfg->scan_done)
  rc = 1;
 if ((elapsed_time/HZ) > (ioa_cfg->transop_timeout * 2))
  rc = 1;
 spin_unlock_irqrestore(shost->host_lock, lock_flags);
 return rc;
}

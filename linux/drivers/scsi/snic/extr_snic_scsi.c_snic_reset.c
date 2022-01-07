
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hba_reset_fail; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;
struct snic {TYPE_2__ s_stats; int snic_lock; int ios_inflight; } ;
struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef enum snic_state { ____Placeholder_snic_state } snic_state ;


 int FAILED ;
 scalar_t__ SNIC_FWRESET ;
 int SNIC_HOST_ERR (struct Scsi_Host*,char*,int) ;
 int SNIC_HOST_INFO (struct Scsi_Host*,char*) ;
 int SNIC_HOST_RESET_TIMEOUT ;
 int SUCCESS ;
 int atomic64_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int msecs_to_jiffies (int) ;
 int msleep (int ) ;
 int schedule_timeout (int ) ;
 struct snic* shost_priv (struct Scsi_Host*) ;
 scalar_t__ snic_get_state (struct snic*) ;
 int snic_issue_hba_reset (struct snic*,struct scsi_cmnd*) ;
 int snic_set_state (struct snic*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snic_reset(struct Scsi_Host *shost, struct scsi_cmnd *sc)
{
 struct snic *snic = shost_priv(shost);
 enum snic_state sv_state;
 unsigned long flags;
 int ret = FAILED;


 sv_state = snic_get_state(snic);

 spin_lock_irqsave(&snic->snic_lock, flags);
 if (snic_get_state(snic) == SNIC_FWRESET) {
  spin_unlock_irqrestore(&snic->snic_lock, flags);
  SNIC_HOST_INFO(shost, "reset:prev reset is in progres\n");

  msleep(SNIC_HOST_RESET_TIMEOUT);
  ret = SUCCESS;

  goto reset_end;
 }

 snic_set_state(snic, SNIC_FWRESET);
 spin_unlock_irqrestore(&snic->snic_lock, flags);



 while (atomic_read(&snic->ios_inflight))
  schedule_timeout(msecs_to_jiffies(1));

 ret = snic_issue_hba_reset(snic, sc);
 if (ret) {
  SNIC_HOST_ERR(shost,
         "reset:Host Reset Failed w/ err %d.\n",
         ret);
  spin_lock_irqsave(&snic->snic_lock, flags);
  snic_set_state(snic, sv_state);
  spin_unlock_irqrestore(&snic->snic_lock, flags);
  atomic64_inc(&snic->s_stats.reset.hba_reset_fail);
  ret = FAILED;

  goto reset_end;
 }

 ret = SUCCESS;

reset_end:
 return ret;
}

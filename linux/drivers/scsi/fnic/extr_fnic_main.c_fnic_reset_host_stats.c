
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {int stats_reset_time; TYPE_1__* lport; int fnic_lock; int vdev; } ;
struct fc_lport {int dummy; } ;
struct fc_host_statistics {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int FNIC_MAIN_DBG (int ,int ,char*,int) ;
 int KERN_DEBUG ;
 int fnic_dump_fchost_stats (struct Scsi_Host*,struct fc_host_statistics*) ;
 struct fc_host_statistics* fnic_get_stats (struct Scsi_Host*) ;
 int jiffies ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int memset (struct fc_host_statistics*,int ,int) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnic_dev_stats_clear (int ) ;

__attribute__((used)) static void fnic_reset_host_stats(struct Scsi_Host *host)
{
 int ret;
 struct fc_lport *lp = shost_priv(host);
 struct fnic *fnic = lport_priv(lp);
 struct fc_host_statistics *stats;
 unsigned long flags;


 stats = fnic_get_stats(host);
 fnic_dump_fchost_stats(host, stats);

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 ret = vnic_dev_stats_clear(fnic->vdev);
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 if (ret) {
  FNIC_MAIN_DBG(KERN_DEBUG, fnic->lport->host,
    "fnic: Reset vnic stats failed"
    " 0x%x", ret);
  return;
 }
 fnic->stats_reset_time = jiffies;
 memset(stats, 0, sizeof(*stats));

 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sm_list; } ;
struct csio_lnode {TYPE_1__ sm; int hwp; } ;
struct Scsi_Host {int host_lock; } ;


 int HZ ;
 int csio_delta_scan_tmo ;
 scalar_t__ csio_list_deleted (int *) ;
 int csio_max_scan_tmo ;
 int csio_scan_done (struct csio_lnode*,int ,unsigned long,int,int) ;
 int jiffies ;
 struct csio_lnode* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
csio_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 struct csio_lnode *ln = shost_priv(shost);
 int rv = 1;

 spin_lock_irq(shost->host_lock);
 if (!ln->hwp || csio_list_deleted(&ln->sm.sm_list))
  goto out;

 rv = csio_scan_done(ln, jiffies, time, csio_max_scan_tmo * HZ,
       csio_delta_scan_tmo * HZ);
out:
 spin_unlock_irq(shost->host_lock);

 return rv;
}

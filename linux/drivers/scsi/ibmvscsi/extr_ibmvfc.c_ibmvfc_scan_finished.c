
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {scalar_t__ scan_complete; int dev; } ;
struct Scsi_Host {int host_lock; } ;


 unsigned long HZ ;
 int dev_info (int ,char*,unsigned long) ;
 unsigned long init_timeout ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_scan_finished(struct Scsi_Host *shost, unsigned long time)
{
 unsigned long flags;
 struct ibmvfc_host *vhost = shost_priv(shost);
 int done = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 if (time >= (init_timeout * HZ)) {
  dev_info(vhost->dev, "Scan taking longer than %d seconds, "
    "continuing initialization\n", init_timeout);
  done = 1;
 }

 if (vhost->scan_complete)
  done = 1;
 spin_unlock_irqrestore(shost->host_lock, flags);
 return done;
}

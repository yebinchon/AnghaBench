
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {void* hostdata; TYPE_1__ dev; } ;
struct ibmvfc_host {int task_set; } ;
struct Scsi_Host {int host_lock; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ibmvfc_target_alloc(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ibmvfc_host *vhost = shost_priv(shost);
 unsigned long flags = 0;

 spin_lock_irqsave(shost->host_lock, flags);
 starget->hostdata = (void *)(unsigned long)vhost->task_set++;
 spin_unlock_irqrestore(shost->host_lock, flags);
 return 0;
}

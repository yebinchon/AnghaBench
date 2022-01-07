
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct scsi_target {TYPE_1__ dev; } ;
struct ibmvfc_target {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 struct ibmvfc_target* __ibmvfc_get_target (struct scsi_target*) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static struct ibmvfc_target *ibmvfc_get_target(struct scsi_target *starget)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct ibmvfc_target *tgt;
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);
 tgt = __ibmvfc_get_target(starget);
 spin_unlock_irqrestore(shost->host_lock, flags);
 return tgt;
}

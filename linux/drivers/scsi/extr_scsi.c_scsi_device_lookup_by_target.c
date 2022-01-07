
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int parent; } ;
struct scsi_target {TYPE_1__ dev; } ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 struct scsi_device* __scsi_device_lookup_by_target (struct scsi_target*,int ) ;
 struct Scsi_Host* dev_to_shost (int ) ;
 scalar_t__ scsi_device_get (struct scsi_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

struct scsi_device *scsi_device_lookup_by_target(struct scsi_target *starget,
       u64 lun)
{
 struct scsi_device *sdev;
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);
 sdev = __scsi_device_lookup_by_target(starget, lun);
 if (sdev && scsi_device_get(sdev))
  sdev = ((void*)0);
 spin_unlock_irqrestore(shost->host_lock, flags);

 return sdev;
}

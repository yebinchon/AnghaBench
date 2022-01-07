
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int queue_depth; scalar_t__ hostdata; TYPE_1__* host; } ;
struct ipr_resource_entry {int dummy; } ;
struct ipr_ioa_cfg {TYPE_2__* host; } ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int IPR_MAX_CMD_PER_ATA_LUN ;
 scalar_t__ ipr_is_gata (struct ipr_resource_entry*) ;
 int scsi_change_queue_depth (struct scsi_device*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int ipr_change_queue_depth(struct scsi_device *sdev, int qdepth)
{
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)sdev->host->hostdata;
 struct ipr_resource_entry *res;
 unsigned long lock_flags = 0;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 res = (struct ipr_resource_entry *)sdev->hostdata;

 if (res && ipr_is_gata(res) && qdepth > IPR_MAX_CMD_PER_ATA_LUN)
  qdepth = IPR_MAX_CMD_PER_ATA_LUN;
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 scsi_change_queue_depth(sdev, qdepth);
 return sdev->queue_depth;
}

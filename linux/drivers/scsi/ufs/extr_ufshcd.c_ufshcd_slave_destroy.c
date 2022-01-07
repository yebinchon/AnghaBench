
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* host; int * sdev_ufs_device; } ;
struct scsi_device {int lun; int host; } ;
struct TYPE_2__ {int host_lock; } ;


 scalar_t__ UFS_UPIU_UFS_DEVICE_WLUN ;
 struct ufs_hba* shost_priv (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ ufshcd_scsi_to_upiu_lun (int ) ;

__attribute__((used)) static void ufshcd_slave_destroy(struct scsi_device *sdev)
{
 struct ufs_hba *hba;

 hba = shost_priv(sdev->host);

 if (ufshcd_scsi_to_upiu_lun(sdev->lun) == UFS_UPIU_UFS_DEVICE_WLUN) {
  unsigned long flags;

  spin_lock_irqsave(hba->host->host_lock, flags);
  hba->sdev_ufs_device = ((void*)0);
  spin_unlock_irqrestore(hba->host->host_lock, flags);
 }
}

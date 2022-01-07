
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int is_lu_power_on_wp; scalar_t__ f_power_on_wp_en; } ;
struct ufs_hba {TYPE_1__ dev_info; } ;
struct scsi_device {int lun; } ;


 scalar_t__ UFS_LU_POWER_ON_WP ;
 int ufshcd_get_lu_wp (struct ufs_hba*,int ,scalar_t__*) ;
 int ufshcd_scsi_to_upiu_lun (int ) ;

__attribute__((used)) static inline void ufshcd_get_lu_power_on_wp_status(struct ufs_hba *hba,
          struct scsi_device *sdev)
{
 if (hba->dev_info.f_power_on_wp_en &&
     !hba->dev_info.is_lu_power_on_wp) {
  u8 b_lu_write_protect;

  if (!ufshcd_get_lu_wp(hba, ufshcd_scsi_to_upiu_lun(sdev->lun),
          &b_lu_write_protect) &&
      (b_lu_write_protect == UFS_LU_POWER_ON_WP))
   hba->dev_info.is_lu_power_on_wp = 1;
 }
}

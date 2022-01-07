
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int UFS_UPIU_MAX_UNIT_NUM_ID ;
 unsigned int UFS_UPIU_WLUN_ID ;
 scalar_t__ scsi_is_wlun (unsigned int) ;

__attribute__((used)) static inline u8 ufshcd_scsi_to_upiu_lun(unsigned int scsi_lun)
{
 if (scsi_is_wlun(scsi_lun))
  return (scsi_lun & UFS_UPIU_MAX_UNIT_NUM_ID)
   | UFS_UPIU_WLUN_ID;
 else
  return scsi_lun & UFS_UPIU_MAX_UNIT_NUM_ID;
}

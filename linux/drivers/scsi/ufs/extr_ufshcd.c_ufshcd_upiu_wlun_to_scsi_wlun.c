
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SCSI_W_LUN_BASE ;
 int UFS_UPIU_WLUN_ID ;

__attribute__((used)) static inline u16 ufshcd_upiu_wlun_to_scsi_wlun(u8 upiu_wlun_id)
{
 return (upiu_wlun_id & ~UFS_UPIU_WLUN_ID) | SCSI_W_LUN_BASE;
}

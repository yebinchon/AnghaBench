
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ UFS_UPIU_MAX_GENERAL_LUN ;
 scalar_t__ UFS_UPIU_RPMB_WLUN ;

__attribute__((used)) static inline bool ufs_is_valid_unit_desc_lun(u8 lun)
{
 return lun == UFS_UPIU_RPMB_WLUN || (lun < UFS_UPIU_MAX_GENERAL_LUN);
}

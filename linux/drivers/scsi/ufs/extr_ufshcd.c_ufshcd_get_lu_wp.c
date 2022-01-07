
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ufs_hba {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 scalar_t__ UFS_UPIU_MAX_GENERAL_LUN ;
 int UNIT_DESC_PARAM_LU_WR_PROTECT ;
 int ufshcd_read_unit_desc_param (struct ufs_hba*,scalar_t__,int ,scalar_t__*,int) ;

__attribute__((used)) static int ufshcd_get_lu_wp(struct ufs_hba *hba,
       u8 lun,
       u8 *b_lu_write_protect)
{
 int ret;

 if (!b_lu_write_protect)
  ret = -EINVAL;





 else if (lun >= UFS_UPIU_MAX_GENERAL_LUN)
  ret = -ENOTSUPP;
 else
  ret = ufshcd_read_unit_desc_param(hba,
       lun,
       UNIT_DESC_PARAM_LU_WR_PROTECT,
       b_lu_write_protect,
       sizeof(*b_lu_write_protect));
 return ret;
}

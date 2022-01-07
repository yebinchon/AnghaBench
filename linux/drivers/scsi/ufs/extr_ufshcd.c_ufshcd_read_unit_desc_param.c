
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ufs_hba {int dummy; } ;
typedef enum unit_desc_param { ____Placeholder_unit_desc_param } unit_desc_param ;


 int EOPNOTSUPP ;
 int QUERY_DESC_IDN_UNIT ;
 int ufs_is_valid_unit_desc_lun (int) ;
 int ufshcd_read_desc_param (struct ufs_hba*,int ,int,int,int *,int ) ;

__attribute__((used)) static inline int ufshcd_read_unit_desc_param(struct ufs_hba *hba,
           int lun,
           enum unit_desc_param param_offset,
           u8 *param_read_buf,
           u32 param_size)
{




 if (!ufs_is_valid_unit_desc_lun(lun))
  return -EOPNOTSUPP;

 return ufshcd_read_desc_param(hba, QUERY_DESC_IDN_UNIT, lun,
          param_offset, param_read_buf, param_size);
}

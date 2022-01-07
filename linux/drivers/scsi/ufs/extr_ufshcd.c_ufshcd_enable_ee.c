
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ufs_hba {int ee_ctrl_mask; } ;


 int MASK_EE_STATUS ;
 int QUERY_ATTR_IDN_EE_CONTROL ;
 int UPIU_QUERY_OPCODE_WRITE_ATTR ;
 int ufshcd_query_attr_retry (struct ufs_hba*,int ,int ,int ,int ,int*) ;

__attribute__((used)) static int ufshcd_enable_ee(struct ufs_hba *hba, u16 mask)
{
 int err = 0;
 u32 val;

 if (hba->ee_ctrl_mask & mask)
  goto out;

 val = hba->ee_ctrl_mask | mask;
 val &= MASK_EE_STATUS;
 err = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_WRITE_ATTR,
   QUERY_ATTR_IDN_EE_CONTROL, 0, 0, &val);
 if (!err)
  hba->ee_ctrl_mask |= mask;
out:
 return err;
}

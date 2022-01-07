
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 int MASK_UIC_COMMAND_RESULT ;
 int REG_UIC_COMMAND_ARG_2 ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline int ufshcd_get_uic_cmd_result(struct ufs_hba *hba)
{
 return ufshcd_readl(hba, REG_UIC_COMMAND_ARG_2) &
        MASK_UIC_COMMAND_RESULT;
}

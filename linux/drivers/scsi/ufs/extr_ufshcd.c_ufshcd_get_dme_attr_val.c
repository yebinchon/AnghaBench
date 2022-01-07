
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int REG_UIC_COMMAND_ARG_3 ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline u32 ufshcd_get_dme_attr_val(struct ufs_hba *hba)
{
 return ufshcd_readl(hba, REG_UIC_COMMAND_ARG_3);
}

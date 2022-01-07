
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ufs_hba {int dummy; } ;


 int REG_CONTROLLER_STATUS ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline u8 ufshcd_get_upmcrs(struct ufs_hba *hba)
{
 return (ufshcd_readl(hba, REG_CONTROLLER_STATUS) >> 8) & 0x7;
}

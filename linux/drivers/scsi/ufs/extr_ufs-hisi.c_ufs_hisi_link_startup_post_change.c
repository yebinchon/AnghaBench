
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hisi_host {int dummy; } ;
struct ufs_hba {int dummy; } ;


 int CLOCK_GATE_BYPASS ;
 int MASK_UFS_CLK_GATE_BYPASS ;
 int MASK_UFS_SYSCRTL_BYPASS ;
 int UFS_SYSCTRL ;
 int UIC_ARG_MIB (int) ;
 int ufs_sys_ctrl_clr_bits (struct ufs_hisi_host*,int ,int ) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static int ufs_hisi_link_startup_post_change(struct ufs_hba *hba)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);


 ufshcd_dme_set(hba, UIC_ARG_MIB(0x2044), 0x0);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x2045), 0x0);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x2040), 0x9);


 ufs_sys_ctrl_clr_bits(host, MASK_UFS_CLK_GATE_BYPASS,
      CLOCK_GATE_BYPASS);
 ufs_sys_ctrl_clr_bits(host, MASK_UFS_SYSCRTL_BYPASS,
      UFS_SYSCTRL);


 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd09a), 0x80000000);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd09c), 0x00000005);

 return 0;
}

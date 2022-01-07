
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hisi_host {int caps; } ;
struct ufs_hba {int dev_quirks; } ;


 int UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME ;
 int UFS_HISI_CAP_PHY10nm ;
 int UIC_ARG_MIB (int) ;
 int UIC_ARG_MIB_SEL (int,int) ;
 int pr_info (char*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_hisi_pwr_change_pre_change(struct ufs_hba *hba)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);

 if (host->caps & UFS_HISI_CAP_PHY10nm) {





  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0xD0A0), 0x13);

  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0x1552), 0x4f);

  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0x1554), 0x4f);

  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0x1556), 0x4f);

  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0x15a7), 0xA);

  ufshcd_dme_set(hba, UIC_ARG_MIB((u32)0x15a8), 0xA);
  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xd085, 0x0), 0x01);
 }

 if (hba->dev_quirks & UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME) {
  pr_info("ufs flash device must set VS_DebugSaveConfigTime 0x10\n");

  ufshcd_dme_set(hba, UIC_ARG_MIB(0xD0A0), 0x10);

  ufshcd_dme_set(hba, UIC_ARG_MIB(0x1556), 0x48);
 }


 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15A8), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x155c), 0x0);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b0), 8191);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b1), 65535);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b2), 32767);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd041), 8191);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd042), 65535);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd043), 32767);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b3), 8191);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b4), 65535);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0x15b5), 32767);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd044), 8191);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd045), 65535);

 ufshcd_dme_set(hba, UIC_ARG_MIB(0xd046), 32767);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ufs_hisi_host {int caps; } ;
struct ufs_hba {int dev; } ;


 int REG_AUTO_HIBERNATE_IDLE_TIMER ;
 int UFS_AHIT_AH8ITV_MASK ;
 int UFS_HCLKDIV_NORMAL_VALUE ;
 int UFS_HISI_CAP_PHY10nm ;
 int UFS_REG_HCLKDIV ;
 int UIC_ARG_MIB_SEL (int,int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,...) ;
 int ufs_hisi_check_hibern8 (struct ufs_hba*) ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;
 struct ufs_hisi_host* ufshcd_get_variant (struct ufs_hba*) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static int ufs_hisi_link_startup_pre_change(struct ufs_hba *hba)
{
 struct ufs_hisi_host *host = ufshcd_get_variant(hba);
 int err;
 uint32_t value;
 uint32_t reg;


 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD0C1, 0x0), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x156A, 0x0), 0x2);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8114, 0x0), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8121, 0x0), 0x2D);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8122, 0x0), 0x1);

 if (host->caps & UFS_HISI_CAP_PHY10nm) {

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8127, 0x0), 0x98);

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8128, 0x0), 0x1);
 }


 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD085, 0x0), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x800D, 0x4), 0x58);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x800D, 0x5), 0x58);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x800E, 0x4), 0xB);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x800E, 0x5), 0xB);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8009, 0x4), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8009, 0x5), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD085, 0x0), 0x1);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x8113, 0x0), 0x1);
 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD085, 0x0), 0x1);

 if (host->caps & UFS_HISI_CAP_PHY10nm) {

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0092, 0x4), 0xA);

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0092, 0x5), 0xA);

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008f, 0x4), 0xA);

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008f, 0x5), 0xA);
 } else {

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008F, 0x4), 0x7);

  ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008F, 0x5), 0x7);
 }


 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0095, 0x4), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0095, 0x5), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0094, 0x4), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x0094, 0x5), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008B, 0x4), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x008B, 0x5), 0x4F);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x000F, 0x0), 0x5);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x000F, 0x1), 0x5);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD085, 0x0), 0x1);

 ufshcd_dme_get(hba, UIC_ARG_MIB_SEL(0xD0C1, 0x0), &value);
 if (value != 0x1)
  dev_info(hba->dev,
      "Warring!!! Unipro VS_mphy_disable is 0x%x\n", value);


 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD0C1, 0x0), 0x0);
 err = ufs_hisi_check_hibern8(hba);
 if (err)
  dev_err(hba->dev, "ufs_hisi_check_hibern8 error\n");

 if (!(host->caps & UFS_HISI_CAP_PHY10nm))
  ufshcd_writel(hba, UFS_HCLKDIV_NORMAL_VALUE, UFS_REG_HCLKDIV);


 reg = ufshcd_readl(hba, REG_AUTO_HIBERNATE_IDLE_TIMER);
 reg = reg & (~UFS_AHIT_AH8ITV_MASK);
 ufshcd_writel(hba, reg, REG_AUTO_HIBERNATE_IDLE_TIMER);


 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0x155E, 0x0), 0x0);

 ufshcd_dme_set(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), 0x0);
 ufshcd_dme_get(hba, UIC_ARG_MIB_SEL(0xD0AB, 0x0), &value);
 if (value != 0) {

  dev_info(hba->dev, "WARN: close VS_Mk2ExtnSupport failed\n");
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev; } ;


 int UIC_ARG_MIB (int ) ;
 int VS_DEBUGOMC ;
 int VS_MPHYCFGUPDT ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int tc_dwc_g210_setup_20bit_rmmi (struct ufs_hba*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;

int tc_dwc_g210_config_20_bit(struct ufs_hba *hba)
{
 int ret = 0;

 dev_info(hba->dev, "Configuring Test Chip 20-bit RMMI\n");
 ret = tc_dwc_g210_setup_20bit_rmmi(hba);
 if (ret) {
  dev_err(hba->dev, "Configuration failed\n");
  goto out;
 }


 ret = ufshcd_dme_set(hba, UIC_ARG_MIB(VS_MPHYCFGUPDT), 0x01);
 if (ret)
  goto out;


 ret = ufshcd_dme_set(hba, UIC_ARG_MIB(VS_DEBUGOMC), 0x01);

out:
 return ret;
}

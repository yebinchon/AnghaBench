
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int PA_VS_CONFIG_REG1 ;
 int UIC_ARG_MIB (int ) ;
 int ufshcd_dme_get (struct ufs_hba*,int ,int*) ;
 int ufshcd_dme_set (struct ufs_hba*,int ,int) ;

__attribute__((used)) static int ufs_qcom_quirk_host_pa_saveconfigtime(struct ufs_hba *hba)
{
 int err;
 u32 pa_vs_config_reg1;

 err = ufshcd_dme_get(hba, UIC_ARG_MIB(PA_VS_CONFIG_REG1),
        &pa_vs_config_reg1);
 if (err)
  goto out;


 err = ufshcd_dme_set(hba, UIC_ARG_MIB(PA_VS_CONFIG_REG1),
       (pa_vs_config_reg1 | (1 << 12)));

out:
 return err;
}

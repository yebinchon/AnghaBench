
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dev_quirks; } ;


 int UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME ;
 int ufs_qcom_quirk_host_pa_saveconfigtime (struct ufs_hba*) ;

__attribute__((used)) static int ufs_qcom_apply_dev_quirks(struct ufs_hba *hba)
{
 int err = 0;

 if (hba->dev_quirks & UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME)
  err = ufs_qcom_quirk_host_pa_saveconfigtime(hba);

 return err;
}

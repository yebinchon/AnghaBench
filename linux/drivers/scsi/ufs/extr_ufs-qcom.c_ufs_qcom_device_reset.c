
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int device_reset; } ;
struct ufs_hba {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ufs_qcom_device_reset(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);


 if (!host->device_reset)
  return;





 gpiod_set_value_cansleep(host->device_reset, 1);
 usleep_range(10, 15);

 gpiod_set_value_cansleep(host->device_reset, 0);
 usleep_range(10, 15);
}

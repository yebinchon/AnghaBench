
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_pa_layer_attr {int dummy; } ;
struct ufs_hba {int dummy; } ;
typedef enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;


 int EINVAL ;


 int ufs_mtk_pre_pwr_change (struct ufs_hba*,struct ufs_pa_layer_attr*,struct ufs_pa_layer_attr*) ;

__attribute__((used)) static int ufs_mtk_pwr_change_notify(struct ufs_hba *hba,
         enum ufs_notify_change_status stage,
         struct ufs_pa_layer_attr *dev_max_params,
         struct ufs_pa_layer_attr *dev_req_params)
{
 int ret = 0;

 switch (stage) {
 case 128:
  ret = ufs_mtk_pre_pwr_change(hba, dev_max_params,
          dev_req_params);
  break;
 case 129:
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}

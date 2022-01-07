
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
typedef enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;


 int EINVAL ;


 int ufs_mtk_post_link (struct ufs_hba*) ;
 int ufs_mtk_pre_link (struct ufs_hba*) ;

__attribute__((used)) static int ufs_mtk_link_startup_notify(struct ufs_hba *hba,
           enum ufs_notify_change_status stage)
{
 int ret = 0;

 switch (stage) {
 case 128:
  ret = ufs_mtk_pre_link(hba);
  break;
 case 129:
  ret = ufs_mtk_post_link(hba);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}

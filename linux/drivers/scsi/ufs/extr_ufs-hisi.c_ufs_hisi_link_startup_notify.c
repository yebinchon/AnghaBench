
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;
typedef enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;




 int ufs_hisi_link_startup_post_change (struct ufs_hba*) ;
 int ufs_hisi_link_startup_pre_change (struct ufs_hba*) ;

__attribute__((used)) static int ufs_hisi_link_startup_notify(struct ufs_hba *hba,
       enum ufs_notify_change_status status)
{
 int err = 0;

 switch (status) {
 case 128:
  err = ufs_hisi_link_startup_pre_change(hba);
  break;
 case 129:
  err = ufs_hisi_link_startup_post_change(hba);
  break;
 default:
  break;
 }

 return err;
}

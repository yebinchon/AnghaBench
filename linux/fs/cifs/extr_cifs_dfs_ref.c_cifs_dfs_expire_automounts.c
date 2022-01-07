
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct list_head {int dummy; } ;


 struct list_head cifs_dfs_automount_list ;
 int cifs_dfs_automount_task ;
 int cifs_dfs_mountpoint_expiry_timeout ;
 int list_empty (struct list_head*) ;
 int mark_mounts_for_expiry (struct list_head*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void cifs_dfs_expire_automounts(struct work_struct *work)
{
 struct list_head *list = &cifs_dfs_automount_list;

 mark_mounts_for_expiry(list);
 if (!list_empty(list))
  schedule_delayed_work(&cifs_dfs_automount_task,
          cifs_dfs_mountpoint_expiry_timeout);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int cleanup_work_sem; int cleaner_mutex; } ;


 int btrfs_cleanup_transaction (struct btrfs_fs_info*) ;
 int btrfs_run_delayed_iputs (struct btrfs_fs_info*) ;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void btrfs_error_commit_super(struct btrfs_fs_info *fs_info)
{

 btrfs_cleanup_transaction(fs_info);

 mutex_lock(&fs_info->cleaner_mutex);
 btrfs_run_delayed_iputs(fs_info);
 mutex_unlock(&fs_info->cleaner_mutex);

 down_write(&fs_info->cleanup_work_sem);
 up_write(&fs_info->cleanup_work_sem);
}

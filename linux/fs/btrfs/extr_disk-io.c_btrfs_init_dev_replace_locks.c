
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int replace_wait; int rwsem; int lock_finishing_cancel_unmount; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; } ;


 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void btrfs_init_dev_replace_locks(struct btrfs_fs_info *fs_info)
{
 mutex_init(&fs_info->dev_replace.lock_finishing_cancel_unmount);
 init_rwsem(&fs_info->dev_replace.rwsem);
 init_waitqueue_head(&fs_info->dev_replace.replace_wait);
}

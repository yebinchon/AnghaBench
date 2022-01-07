
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int balance_wait_q; int * balance_ctl; int balance_cancel_req; int balance_pause_req; int balance_mutex; int balance_lock; } ;


 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void btrfs_init_balance(struct btrfs_fs_info *fs_info)
{
 spin_lock_init(&fs_info->balance_lock);
 mutex_init(&fs_info->balance_mutex);
 atomic_set(&fs_info->balance_pause_req, 0);
 atomic_set(&fs_info->balance_cancel_req, 0);
 fs_info->balance_ctl = ((void*)0);
 init_waitqueue_head(&fs_info->balance_wait_q);
}

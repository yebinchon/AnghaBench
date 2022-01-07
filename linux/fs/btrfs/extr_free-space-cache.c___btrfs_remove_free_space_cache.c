
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {int tree_lock; } ;


 int __btrfs_remove_free_space_cache_locked (struct btrfs_free_space_ctl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __btrfs_remove_free_space_cache(struct btrfs_free_space_ctl *ctl)
{
 spin_lock(&ctl->tree_lock);
 __btrfs_remove_free_space_cache_locked(ctl);
 spin_unlock(&ctl->tree_lock);
}

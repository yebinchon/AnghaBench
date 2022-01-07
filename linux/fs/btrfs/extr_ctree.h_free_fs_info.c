
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int super_for_commit; int super_copy; int free_space_root; int uuid_root; int quota_root; int csum_root; int dev_root; int chunk_root; int tree_root; int extent_root; int delayed_root; int balance_ctl; } ;


 int kfree (int ) ;
 int kvfree (struct btrfs_fs_info*) ;

__attribute__((used)) static inline void free_fs_info(struct btrfs_fs_info *fs_info)
{
 kfree(fs_info->balance_ctl);
 kfree(fs_info->delayed_root);
 kfree(fs_info->extent_root);
 kfree(fs_info->tree_root);
 kfree(fs_info->chunk_root);
 kfree(fs_info->dev_root);
 kfree(fs_info->csum_root);
 kfree(fs_info->quota_root);
 kfree(fs_info->uuid_root);
 kfree(fs_info->free_space_root);
 kfree(fs_info->super_copy);
 kfree(fs_info->super_for_commit);
 kvfree(fs_info);
}

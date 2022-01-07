
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int lock; } ;
struct btrfs_fs_info {struct btrfs_block_rsv global_block_rsv; struct btrfs_block_rsv delayed_refs_rsv; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool btrfs_check_space_for_delayed_refs(struct btrfs_fs_info *fs_info)
{
 struct btrfs_block_rsv *delayed_refs_rsv = &fs_info->delayed_refs_rsv;
 struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;
 bool ret = 0;
 u64 reserved;

 spin_lock(&global_rsv->lock);
 reserved = global_rsv->reserved;
 spin_unlock(&global_rsv->lock);







 spin_lock(&delayed_refs_rsv->lock);
 reserved += delayed_refs_rsv->reserved;
 if (delayed_refs_rsv->size >= reserved)
  ret = 1;
 spin_unlock(&delayed_refs_rsv->lock);
 return ret;
}

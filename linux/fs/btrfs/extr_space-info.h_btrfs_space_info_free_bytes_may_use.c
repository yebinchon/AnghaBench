
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int lock; } ;
struct btrfs_fs_info {int dummy; } ;


 int btrfs_space_info_update_bytes_may_use (struct btrfs_fs_info*,struct btrfs_space_info*,int ) ;
 int btrfs_try_granting_tickets (struct btrfs_fs_info*,struct btrfs_space_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void btrfs_space_info_free_bytes_may_use(
    struct btrfs_fs_info *fs_info,
    struct btrfs_space_info *space_info,
    u64 num_bytes)
{
 spin_lock(&space_info->lock);
 btrfs_space_info_update_bytes_may_use(fs_info, space_info, -num_bytes);
 btrfs_try_granting_tickets(fs_info, space_info);
 spin_unlock(&space_info->lock);
}

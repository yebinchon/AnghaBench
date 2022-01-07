
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int total_bytes; int disk_total; int bytes_used; int disk_used; int lock; scalar_t__ full; int bytes_readonly; } ;
struct btrfs_fs_info {int dummy; } ;


 int ASSERT (struct btrfs_space_info*) ;
 int btrfs_bg_type_to_factor (int) ;
 struct btrfs_space_info* btrfs_find_space_info (struct btrfs_fs_info*,int) ;
 int btrfs_try_granting_tickets (struct btrfs_fs_info*,struct btrfs_space_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_update_space_info(struct btrfs_fs_info *info, u64 flags,
        u64 total_bytes, u64 bytes_used,
        u64 bytes_readonly,
        struct btrfs_space_info **space_info)
{
 struct btrfs_space_info *found;
 int factor;

 factor = btrfs_bg_type_to_factor(flags);

 found = btrfs_find_space_info(info, flags);
 ASSERT(found);
 spin_lock(&found->lock);
 found->total_bytes += total_bytes;
 found->disk_total += total_bytes * factor;
 found->bytes_used += bytes_used;
 found->disk_used += bytes_used * factor;
 found->bytes_readonly += bytes_readonly;
 if (total_bytes > 0)
  found->full = 0;
 btrfs_try_granting_tickets(info, found);
 spin_unlock(&found->lock);
 *space_info = found;
}

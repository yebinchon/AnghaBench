
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int reservations; } ;


 int ASSERT (struct btrfs_block_group_cache*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int const) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int wake_up_var (int *) ;

void btrfs_dec_block_group_reservations(struct btrfs_fs_info *fs_info,
     const u64 start)
{
 struct btrfs_block_group_cache *bg;

 bg = btrfs_lookup_block_group(fs_info, start);
 ASSERT(bg);
 if (atomic_dec_and_test(&bg->reservations))
  wake_up_var(&bg->reservations);
 btrfs_put_block_group(bg);
}

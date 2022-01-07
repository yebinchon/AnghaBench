
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int nocow_writers; } ;


 int ASSERT (struct btrfs_block_group_cache*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int wake_up_var (int *) ;

void btrfs_dec_nocow_writers(struct btrfs_fs_info *fs_info, u64 bytenr)
{
 struct btrfs_block_group_cache *bg;

 bg = btrfs_lookup_block_group(fs_info, bytenr);
 ASSERT(bg);
 if (atomic_dec_and_test(&bg->nocow_writers))
  wake_up_var(&bg->nocow_writers);




 btrfs_put_block_group(bg);
 btrfs_put_block_group(bg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int total_bytes_pinned; } ;
struct btrfs_ref {int len; } ;
struct btrfs_fs_info {int dummy; } ;


 int ASSERT (struct btrfs_space_info*) ;
 int BTRFS_TOTAL_BYTES_PINNED_BATCH ;
 struct btrfs_space_info* btrfs_find_space_info (struct btrfs_fs_info*,int ) ;
 int generic_ref_to_space_flags (struct btrfs_ref*) ;
 int percpu_counter_add_batch (int *,int ,int ) ;

__attribute__((used)) static void add_pinned_bytes(struct btrfs_fs_info *fs_info,
        struct btrfs_ref *ref)
{
 struct btrfs_space_info *space_info;
 u64 flags = generic_ref_to_space_flags(ref);

 space_info = btrfs_find_space_info(fs_info, flags);
 ASSERT(space_info);
 percpu_counter_add_batch(&space_info->total_bytes_pinned, ref->len,
      BTRFS_TOTAL_BYTES_PINNED_BATCH);
}

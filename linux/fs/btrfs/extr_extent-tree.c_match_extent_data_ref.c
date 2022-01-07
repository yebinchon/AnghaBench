
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_extent_data_ref {int dummy; } ;


 scalar_t__ btrfs_extent_data_ref_objectid (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 scalar_t__ btrfs_extent_data_ref_offset (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 scalar_t__ btrfs_extent_data_ref_root (struct extent_buffer*,struct btrfs_extent_data_ref*) ;

__attribute__((used)) static int match_extent_data_ref(struct extent_buffer *leaf,
     struct btrfs_extent_data_ref *ref,
     u64 root_objectid, u64 owner, u64 offset)
{
 if (btrfs_extent_data_ref_root(leaf, ref) != root_objectid ||
     btrfs_extent_data_ref_objectid(leaf, ref) != owner ||
     btrfs_extent_data_ref_offset(leaf, ref) != offset)
  return 0;
 return 1;
}

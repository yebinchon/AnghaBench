
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_extent_data_ref {int dummy; } ;


 int btrfs_extent_data_ref_objectid (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int btrfs_extent_data_ref_offset (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int btrfs_extent_data_ref_root (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int hash_extent_data_ref (int ,int ,int ) ;

__attribute__((used)) static u64 hash_extent_data_ref_item(struct extent_buffer *leaf,
         struct btrfs_extent_data_ref *ref)
{
 return hash_extent_data_ref(btrfs_extent_data_ref_root(leaf, ref),
        btrfs_extent_data_ref_objectid(leaf, ref),
        btrfs_extent_data_ref_offset(leaf, ref));
}

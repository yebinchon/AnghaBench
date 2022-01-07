
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_extent_data_ref {int dummy; } ;


 int btrfs_extent_data_ref_count (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int btrfs_extent_data_ref_objectid (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int btrfs_extent_data_ref_offset (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int btrfs_extent_data_ref_root (struct extent_buffer*,struct btrfs_extent_data_ref*) ;
 int pr_cont (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void print_extent_data_ref(struct extent_buffer *eb,
      struct btrfs_extent_data_ref *ref)
{
 pr_cont("extent data backref root %llu objectid %llu offset %llu count %u\n",
        btrfs_extent_data_ref_root(eb, ref),
        btrfs_extent_data_ref_objectid(eb, ref),
        btrfs_extent_data_ref_offset(eb, ref),
        btrfs_extent_data_ref_count(eb, ref));
}

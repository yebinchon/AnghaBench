
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 struct extent_buffer* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int btree_read_extent_buffer_pages (struct extent_buffer*,int ,int,struct btrfs_key*) ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_fs_info*,int ) ;
 int free_extent_buffer_stale (struct extent_buffer*) ;

struct extent_buffer *read_tree_block(struct btrfs_fs_info *fs_info, u64 bytenr,
          u64 parent_transid, int level,
          struct btrfs_key *first_key)
{
 struct extent_buffer *buf = ((void*)0);
 int ret;

 buf = btrfs_find_create_tree_block(fs_info, bytenr);
 if (IS_ERR(buf))
  return buf;

 ret = btree_read_extent_buffer_pages(buf, parent_transid,
          level, first_key);
 if (ret) {
  free_extent_buffer_stale(buf);
  return ERR_PTR(ret);
 }
 return buf;

}

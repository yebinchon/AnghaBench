
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int WAIT_NONE ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_fs_info*,int ) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int free_extent_buffer_stale (struct extent_buffer*) ;
 int read_extent_buffer_pages (struct extent_buffer*,int ,int ) ;

void readahead_tree_block(struct btrfs_fs_info *fs_info, u64 bytenr)
{
 struct extent_buffer *buf = ((void*)0);
 int ret;

 buf = btrfs_find_create_tree_block(fs_info, bytenr);
 if (IS_ERR(buf))
  return;

 ret = read_extent_buffer_pages(buf, WAIT_NONE, 0);
 if (ret < 0)
  free_extent_buffer_stale(buf);
 else
  free_extent_buffer(buf);
}

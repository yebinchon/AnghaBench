
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int type; void* offset; void* objectid; } ;
struct btrfs_fs_info {int extent_root; } ;


 int BTRFS_EXTENT_ITEM_KEY ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,int ,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

int btrfs_lookup_data_extent(struct btrfs_fs_info *fs_info, u64 start, u64 len)
{
 int ret;
 struct btrfs_key key;
 struct btrfs_path *path;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 key.objectid = start;
 key.offset = len;
 key.type = BTRFS_EXTENT_ITEM_KEY;
 ret = btrfs_search_slot(((void*)0), fs_info->extent_root, &key, path, 0, 0);
 btrfs_free_path(path);
 return ret;
}

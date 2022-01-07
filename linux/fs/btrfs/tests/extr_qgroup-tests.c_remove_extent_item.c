
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;


 int BTRFS_EXTENT_ITEM_KEY ;
 int ENOMEM ;
 int TEST_ALLOC_ROOT ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_init_dummy_trans (struct btrfs_trans_handle*,int *) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int test_err (char*,int) ;
 int test_std_err (int ) ;

__attribute__((used)) static int remove_extent_item(struct btrfs_root *root, u64 bytenr,
         u64 num_bytes)
{
 struct btrfs_trans_handle trans;
 struct btrfs_key key;
 struct btrfs_path *path;
 int ret;

 btrfs_init_dummy_trans(&trans, ((void*)0));

 key.objectid = bytenr;
 key.type = BTRFS_EXTENT_ITEM_KEY;
 key.offset = num_bytes;

 path = btrfs_alloc_path();
 if (!path) {
  test_std_err(TEST_ALLOC_ROOT);
  return -ENOMEM;
 }
 path->leave_spinning = 1;

 ret = btrfs_search_slot(&trans, root, &key, path, -1, 1);
 if (ret) {
  test_err("didn't find our key %d", ret);
  btrfs_free_path(path);
  return ret;
 }
 btrfs_del_item(&trans, root, path);
 btrfs_free_path(path);
 return 0;
}

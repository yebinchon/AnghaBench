
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int offset; int type; int objectid; } ;
struct btrfs_item {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;


 int BTRFS_DIR_ITEM_KEY ;
 scalar_t__ BTRFS_LEAF_DATA_SIZE (int ) ;
 int EEXIST ;
 int ENOMEM ;
 int EOVERFLOW ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 scalar_t__ btrfs_item_size_nr (struct extent_buffer*,int) ;
 struct btrfs_dir_item* btrfs_match_dir_item_name (int ,struct btrfs_path*,char const*,int) ;
 int btrfs_name_hash (char const*,int) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;

int btrfs_check_dir_item_collision(struct btrfs_root *root, u64 dir,
       const char *name, int name_len)
{
 int ret;
 struct btrfs_key key;
 struct btrfs_dir_item *di;
 int data_size;
 struct extent_buffer *leaf;
 int slot;
 struct btrfs_path *path;


 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 key.objectid = dir;
 key.type = BTRFS_DIR_ITEM_KEY;
 key.offset = btrfs_name_hash(name, name_len);

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);


 if (ret < 0)
  goto out;


 if (ret > 0) {
  ret = 0;
  goto out;
 }


 di = btrfs_match_dir_item_name(root->fs_info, path, name, name_len);
 if (di) {

  ret = -EEXIST;
  goto out;
 }





 data_size = sizeof(*di) + name_len;
 leaf = path->nodes[0];
 slot = path->slots[0];
 if (data_size + btrfs_item_size_nr(leaf, slot) +
     sizeof(struct btrfs_item) > BTRFS_LEAF_DATA_SIZE(root->fs_info)) {
  ret = -EOVERFLOW;
 } else {

  ret = 0;
 }
out:
 btrfs_free_path(path);
 return ret;
}

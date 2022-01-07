
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int state; int root_item; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; int type; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; struct btrfs_root* free_space_root; struct btrfs_root* uuid_root; struct btrfs_root* quota_root; struct btrfs_root* csum_root; struct btrfs_root* dev_root; struct btrfs_root* chunk_root; struct btrfs_root* extent_root; } ;


 scalar_t__ BTRFS_CHUNK_TREE_OBJECTID ;
 scalar_t__ BTRFS_CSUM_TREE_OBJECTID ;
 scalar_t__ BTRFS_DEV_TREE_OBJECTID ;
 scalar_t__ BTRFS_EXTENT_TREE_OBJECTID ;
 scalar_t__ BTRFS_FREE_SPACE_TREE_OBJECTID ;
 int BTRFS_ORPHAN_ITEM_KEY ;
 scalar_t__ BTRFS_ORPHAN_OBJECTID ;
 scalar_t__ BTRFS_QUOTA_TREE_OBJECTID ;
 int BTRFS_ROOT_ORPHAN_ITEM_INSERTED ;
 scalar_t__ BTRFS_ROOT_TREE_OBJECTID ;
 scalar_t__ BTRFS_UUID_TREE_OBJECTID ;
 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 struct btrfs_root* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct btrfs_root*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_fs_root (struct btrfs_root*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_init_fs_root (struct btrfs_root*) ;
 int btrfs_insert_fs_root (struct btrfs_fs_info*,struct btrfs_root*) ;
 struct btrfs_root* btrfs_lookup_fs_root (struct btrfs_fs_info*,scalar_t__) ;
 struct btrfs_root* btrfs_read_fs_root (struct btrfs_root*,struct btrfs_key*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int set_bit (int ,int *) ;

struct btrfs_root *btrfs_get_fs_root(struct btrfs_fs_info *fs_info,
         struct btrfs_key *location,
         bool check_ref)
{
 struct btrfs_root *root;
 struct btrfs_path *path;
 struct btrfs_key key;
 int ret;

 if (location->objectid == BTRFS_ROOT_TREE_OBJECTID)
  return fs_info->tree_root;
 if (location->objectid == BTRFS_EXTENT_TREE_OBJECTID)
  return fs_info->extent_root;
 if (location->objectid == BTRFS_CHUNK_TREE_OBJECTID)
  return fs_info->chunk_root;
 if (location->objectid == BTRFS_DEV_TREE_OBJECTID)
  return fs_info->dev_root;
 if (location->objectid == BTRFS_CSUM_TREE_OBJECTID)
  return fs_info->csum_root;
 if (location->objectid == BTRFS_QUOTA_TREE_OBJECTID)
  return fs_info->quota_root ? fs_info->quota_root :
          ERR_PTR(-ENOENT);
 if (location->objectid == BTRFS_UUID_TREE_OBJECTID)
  return fs_info->uuid_root ? fs_info->uuid_root :
         ERR_PTR(-ENOENT);
 if (location->objectid == BTRFS_FREE_SPACE_TREE_OBJECTID)
  return fs_info->free_space_root ? fs_info->free_space_root :
        ERR_PTR(-ENOENT);
again:
 root = btrfs_lookup_fs_root(fs_info, location->objectid);
 if (root) {
  if (check_ref && btrfs_root_refs(&root->root_item) == 0)
   return ERR_PTR(-ENOENT);
  return root;
 }

 root = btrfs_read_fs_root(fs_info->tree_root, location);
 if (IS_ERR(root))
  return root;

 if (check_ref && btrfs_root_refs(&root->root_item) == 0) {
  ret = -ENOENT;
  goto fail;
 }

 ret = btrfs_init_fs_root(root);
 if (ret)
  goto fail;

 path = btrfs_alloc_path();
 if (!path) {
  ret = -ENOMEM;
  goto fail;
 }
 key.objectid = BTRFS_ORPHAN_OBJECTID;
 key.type = BTRFS_ORPHAN_ITEM_KEY;
 key.offset = location->objectid;

 ret = btrfs_search_slot(((void*)0), fs_info->tree_root, &key, path, 0, 0);
 btrfs_free_path(path);
 if (ret < 0)
  goto fail;
 if (ret == 0)
  set_bit(BTRFS_ROOT_ORPHAN_ITEM_INSERTED, &root->state);

 ret = btrfs_insert_fs_root(fs_info, root);
 if (ret) {
  if (ret == -EEXIST) {
   btrfs_free_fs_root(root);
   goto again;
  }
  goto fail;
 }
 return root;
fail:
 btrfs_free_fs_root(root);
 return ERR_PTR(ret);
}

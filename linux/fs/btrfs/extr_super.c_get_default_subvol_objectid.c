
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; int * nodes; } ;
struct btrfs_key {int objectid; } ;
struct btrfs_fs_info {int super_copy; struct btrfs_root* tree_root; } ;
struct btrfs_dir_item {int dummy; } ;


 int BTRFS_FS_TREE_OBJECTID ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_dir_item_key_to_cpu (int ,struct btrfs_dir_item*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 struct btrfs_dir_item* btrfs_lookup_dir_item (int *,struct btrfs_root*,struct btrfs_path*,int ,char*,int,int ) ;
 int btrfs_super_root_dir (int ) ;

__attribute__((used)) static int get_default_subvol_objectid(struct btrfs_fs_info *fs_info, u64 *objectid)
{
 struct btrfs_root *root = fs_info->tree_root;
 struct btrfs_dir_item *di;
 struct btrfs_path *path;
 struct btrfs_key location;
 u64 dir_id;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 path->leave_spinning = 1;






 dir_id = btrfs_super_root_dir(fs_info->super_copy);
 di = btrfs_lookup_dir_item(((void*)0), root, path, dir_id, "default", 7, 0);
 if (IS_ERR(di)) {
  btrfs_free_path(path);
  return PTR_ERR(di);
 }
 if (!di) {





  btrfs_free_path(path);
  *objectid = BTRFS_FS_TREE_OBJECTID;
  return 0;
 }

 btrfs_dir_item_key_to_cpu(path->nodes[0], di, &location);
 btrfs_free_path(path);
 *objectid = location.objectid;
 return 0;
}

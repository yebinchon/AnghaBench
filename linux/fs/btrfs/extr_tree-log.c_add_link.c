
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {scalar_t__ i_nlink; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * nodes; } ;
struct btrfs_key {int objectid; } ;
struct btrfs_dir_item {int dummy; } ;


 int BTRFS_I (struct inode*) ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct btrfs_dir_item*) ;
 int PTR_ERR (struct btrfs_dir_item*) ;
 int btrfs_add_link (struct btrfs_trans_handle*,int ,int ,char const*,int,int ,int ) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_dir_item_key_to_cpu (int ,struct btrfs_dir_item*,struct btrfs_key*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_ino (int ) ;
 struct btrfs_dir_item* btrfs_lookup_dir_item (int *,struct btrfs_root*,struct btrfs_path*,int ,char const*,int,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_run_delayed_items (struct btrfs_trans_handle*) ;
 int btrfs_unlink_inode (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,char const*,int) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* read_one_inode (struct btrfs_root*,int ) ;

__attribute__((used)) static int add_link(struct btrfs_trans_handle *trans, struct btrfs_root *root,
      struct inode *dir, struct inode *inode, const char *name,
      int namelen, u64 ref_index)
{
 struct btrfs_dir_item *dir_item;
 struct btrfs_key key;
 struct btrfs_path *path;
 struct inode *other_inode = ((void*)0);
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 dir_item = btrfs_lookup_dir_item(((void*)0), root, path,
      btrfs_ino(BTRFS_I(dir)),
      name, namelen, 0);
 if (!dir_item) {
  btrfs_release_path(path);
  goto add_link;
 } else if (IS_ERR(dir_item)) {
  ret = PTR_ERR(dir_item);
  goto out;
 }






 btrfs_dir_item_key_to_cpu(path->nodes[0], dir_item, &key);
 btrfs_release_path(path);
 other_inode = read_one_inode(root, key.objectid);
 if (!other_inode) {
  ret = -ENOENT;
  goto out;
 }
 ret = btrfs_unlink_inode(trans, root, BTRFS_I(dir), BTRFS_I(other_inode),
     name, namelen);
 if (ret)
  goto out;




 if (other_inode->i_nlink == 0)
  inc_nlink(other_inode);

 ret = btrfs_run_delayed_items(trans);
 if (ret)
  goto out;
add_link:
 ret = btrfs_add_link(trans, BTRFS_I(dir), BTRFS_I(inode),
        name, namelen, 0, ref_index);
out:
 iput(other_inode);
 btrfs_free_path(path);

 return ret;
}

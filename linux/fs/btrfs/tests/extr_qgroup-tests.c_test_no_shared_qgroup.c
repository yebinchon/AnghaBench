
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ulist {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_FS_TREE_OBJECTID ;
 int EINVAL ;
 int btrfs_create_qgroup (struct btrfs_trans_handle*,int ) ;
 int btrfs_find_all_roots (struct btrfs_trans_handle*,struct btrfs_fs_info*,int ,int ,struct ulist**,int) ;
 int btrfs_init_dummy_trans (struct btrfs_trans_handle*,struct btrfs_fs_info*) ;
 int btrfs_qgroup_account_extent (struct btrfs_trans_handle*,int ,int ,struct ulist*,struct ulist*) ;
 scalar_t__ btrfs_verify_qgroup_counts (struct btrfs_fs_info*,int ,int ,int ) ;
 int insert_normal_tree_ref (struct btrfs_root*,int ,int ,int ,int ) ;
 int remove_extent_item (struct btrfs_root*,int ,int ) ;
 int test_err (char*,...) ;
 int test_msg (char*) ;
 int ulist_free (struct ulist*) ;

__attribute__((used)) static int test_no_shared_qgroup(struct btrfs_root *root,
  u32 sectorsize, u32 nodesize)
{
 struct btrfs_trans_handle trans;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct ulist *old_roots = ((void*)0);
 struct ulist *new_roots = ((void*)0);
 int ret;

 btrfs_init_dummy_trans(&trans, fs_info);

 test_msg("running qgroup add/remove tests");
 ret = btrfs_create_qgroup(&trans, BTRFS_FS_TREE_OBJECTID);
 if (ret) {
  test_err("couldn't create a qgroup %d", ret);
  return ret;
 }






 ret = btrfs_find_all_roots(&trans, fs_info, nodesize, 0, &old_roots,
   0);
 if (ret) {
  ulist_free(old_roots);
  test_err("couldn't find old roots: %d", ret);
  return ret;
 }

 ret = insert_normal_tree_ref(root, nodesize, nodesize, 0,
    BTRFS_FS_TREE_OBJECTID);
 if (ret)
  return ret;

 ret = btrfs_find_all_roots(&trans, fs_info, nodesize, 0, &new_roots,
   0);
 if (ret) {
  ulist_free(old_roots);
  ulist_free(new_roots);
  test_err("couldn't find old roots: %d", ret);
  return ret;
 }

 ret = btrfs_qgroup_account_extent(&trans, nodesize, nodesize, old_roots,
       new_roots);
 if (ret) {
  test_err("couldn't account space for a qgroup %d", ret);
  return ret;
 }

 if (btrfs_verify_qgroup_counts(fs_info, BTRFS_FS_TREE_OBJECTID,
    nodesize, nodesize)) {
  test_err("qgroup counts didn't match expected values");
  return -EINVAL;
 }
 old_roots = ((void*)0);
 new_roots = ((void*)0);

 ret = btrfs_find_all_roots(&trans, fs_info, nodesize, 0, &old_roots,
   0);
 if (ret) {
  ulist_free(old_roots);
  test_err("couldn't find old roots: %d", ret);
  return ret;
 }

 ret = remove_extent_item(root, nodesize, nodesize);
 if (ret)
  return -EINVAL;

 ret = btrfs_find_all_roots(&trans, fs_info, nodesize, 0, &new_roots,
   0);
 if (ret) {
  ulist_free(old_roots);
  ulist_free(new_roots);
  test_err("couldn't find old roots: %d", ret);
  return ret;
 }

 ret = btrfs_qgroup_account_extent(&trans, nodesize, nodesize, old_roots,
       new_roots);
 if (ret) {
  test_err("couldn't account space for a qgroup %d", ret);
  return -EINVAL;
 }

 if (btrfs_verify_qgroup_counts(fs_info, BTRFS_FS_TREE_OBJECTID, 0, 0)) {
  test_err("qgroup counts didn't match expected values");
  return -EINVAL;
 }

 return 0;
}

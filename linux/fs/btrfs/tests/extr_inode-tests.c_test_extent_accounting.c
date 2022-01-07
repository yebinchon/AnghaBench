
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int outstanding_extents; int io_tree; struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_MAX_EXTENT_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int EXTENT_DELALLOC ;
 int EXTENT_UPTODATE ;
 scalar_t__ IS_ERR (struct btrfs_root*) ;
 int TEST_ALLOC_FS_INFO ;
 int TEST_ALLOC_INODE ;
 int TEST_ALLOC_ROOT ;
 struct btrfs_fs_info* btrfs_alloc_dummy_fs_info (int,int) ;
 struct btrfs_root* btrfs_alloc_dummy_root (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_fs_info (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_root (struct btrfs_root*) ;
 struct inode* btrfs_new_test_inode () ;
 int btrfs_set_extent_delalloc (struct inode*,int,int,int ,int *) ;
 int btrfs_test_inode_set_ops (struct inode*) ;
 int clear_extent_bit (int *,int,int,int,int ,int ,int *) ;
 int iput (struct inode*) ;
 int test_err (char*,int) ;
 int test_msg (char*) ;
 int test_std_err (int ) ;

__attribute__((used)) static int test_extent_accounting(u32 sectorsize, u32 nodesize)
{
 struct btrfs_fs_info *fs_info = ((void*)0);
 struct inode *inode = ((void*)0);
 struct btrfs_root *root = ((void*)0);
 int ret = -ENOMEM;

 test_msg("running outstanding_extents tests");

 inode = btrfs_new_test_inode();
 if (!inode) {
  test_std_err(TEST_ALLOC_INODE);
  return ret;
 }

 fs_info = btrfs_alloc_dummy_fs_info(nodesize, sectorsize);
 if (!fs_info) {
  test_std_err(TEST_ALLOC_FS_INFO);
  goto out;
 }

 root = btrfs_alloc_dummy_root(fs_info);
 if (IS_ERR(root)) {
  test_std_err(TEST_ALLOC_ROOT);
  goto out;
 }

 BTRFS_I(inode)->root = root;
 btrfs_test_inode_set_ops(inode);


 ret = btrfs_set_extent_delalloc(inode, 0, BTRFS_MAX_EXTENT_SIZE - 1, 0,
     ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 1) {
  ret = -EINVAL;
  test_err("miscount, wanted 1, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }


 ret = btrfs_set_extent_delalloc(inode, BTRFS_MAX_EXTENT_SIZE,
     BTRFS_MAX_EXTENT_SIZE + sectorsize - 1,
     0, ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 2) {
  ret = -EINVAL;
  test_err("miscount, wanted 2, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }


 ret = clear_extent_bit(&BTRFS_I(inode)->io_tree,
          BTRFS_MAX_EXTENT_SIZE >> 1,
          (BTRFS_MAX_EXTENT_SIZE >> 1) + sectorsize - 1,
          EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, ((void*)0));
 if (ret) {
  test_err("clear_extent_bit returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 2) {
  ret = -EINVAL;
  test_err("miscount, wanted 2, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }


 ret = btrfs_set_extent_delalloc(inode, BTRFS_MAX_EXTENT_SIZE >> 1,
     (BTRFS_MAX_EXTENT_SIZE >> 1)
     + sectorsize - 1,
     0, ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 2) {
  ret = -EINVAL;
  test_err("miscount, wanted 2, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }




 ret = btrfs_set_extent_delalloc(inode,
   BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize,
   (BTRFS_MAX_EXTENT_SIZE << 1) + 3 * sectorsize - 1,
   0, ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 4) {
  ret = -EINVAL;
  test_err("miscount, wanted 4, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }




 ret = btrfs_set_extent_delalloc(inode,
   BTRFS_MAX_EXTENT_SIZE + sectorsize,
   BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1, 0, ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 3) {
  ret = -EINVAL;
  test_err("miscount, wanted 3, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }


 ret = clear_extent_bit(&BTRFS_I(inode)->io_tree,
          BTRFS_MAX_EXTENT_SIZE + sectorsize,
          BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1,
          EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, ((void*)0));
 if (ret) {
  test_err("clear_extent_bit returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 4) {
  ret = -EINVAL;
  test_err("miscount, wanted 4, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }





 ret = btrfs_set_extent_delalloc(inode,
   BTRFS_MAX_EXTENT_SIZE + sectorsize,
   BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1, 0, ((void*)0));
 if (ret) {
  test_err("btrfs_set_extent_delalloc returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents != 3) {
  ret = -EINVAL;
  test_err("miscount, wanted 3, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }


 ret = clear_extent_bit(&BTRFS_I(inode)->io_tree, 0, (u64)-1,
          EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, ((void*)0));
 if (ret) {
  test_err("clear_extent_bit returned %d", ret);
  goto out;
 }
 if (BTRFS_I(inode)->outstanding_extents) {
  ret = -EINVAL;
  test_err("miscount, wanted 0, got %u",
    BTRFS_I(inode)->outstanding_extents);
  goto out;
 }
 ret = 0;
out:
 if (ret)
  clear_extent_bit(&BTRFS_I(inode)->io_tree, 0, (u64)-1,
     EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, ((void*)0));
 iput(inode);
 btrfs_free_dummy_root(root);
 btrfs_free_dummy_fs_info(fs_info);
 return ret;
}

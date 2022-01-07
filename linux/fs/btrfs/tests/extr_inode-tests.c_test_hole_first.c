
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; int start; int len; scalar_t__ flags; int node; } ;
struct btrfs_root {scalar_t__ block_start; int start; int len; scalar_t__ flags; int node; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ offset; int objectid; int type; } ;
struct TYPE_5__ {struct extent_map* root; TYPE_1__ location; } ;


 int BTRFS_FILE_EXTENT_REG ;
 int BTRFS_FIRST_FREE_OBJECTID ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_ITEM_KEY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ EXTENT_MAP_HOLE ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 int TEST_ALLOC_FS_INFO ;
 int TEST_ALLOC_INODE ;
 int TEST_ALLOC_ROOT ;
 int alloc_dummy_extent_buffer (struct btrfs_fs_info*,int) ;
 struct btrfs_fs_info* btrfs_alloc_dummy_fs_info (int,int) ;
 struct extent_map* btrfs_alloc_dummy_root (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_fs_info (struct btrfs_fs_info*) ;
 int btrfs_free_dummy_root (struct extent_map*) ;
 struct extent_map* btrfs_get_extent (TYPE_2__*,int *,int ,int,int,int ) ;
 struct inode* btrfs_new_test_inode () ;
 int btrfs_set_header_level (int ,int ) ;
 int btrfs_set_header_nritems (int ,int ) ;
 int free_extent_map (struct extent_map*) ;
 int insert_extent (struct extent_map*,int,int,int,int ,int,int,int ,int ,int) ;
 int insert_inode_item_key (struct extent_map*) ;
 int iput (struct inode*) ;
 int test_err (char*,...) ;
 int test_msg (char*) ;
 int test_std_err (int ) ;
 scalar_t__ vacancy_only ;

__attribute__((used)) static int test_hole_first(u32 sectorsize, u32 nodesize)
{
 struct btrfs_fs_info *fs_info = ((void*)0);
 struct inode *inode = ((void*)0);
 struct btrfs_root *root = ((void*)0);
 struct extent_map *em = ((void*)0);
 int ret = -ENOMEM;

 test_msg("running hole first btrfs_get_extent test");

 inode = btrfs_new_test_inode();
 if (!inode) {
  test_std_err(TEST_ALLOC_INODE);
  return ret;
 }

 BTRFS_I(inode)->location.type = BTRFS_INODE_ITEM_KEY;
 BTRFS_I(inode)->location.objectid = BTRFS_FIRST_FREE_OBJECTID;
 BTRFS_I(inode)->location.offset = 0;

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

 root->node = alloc_dummy_extent_buffer(fs_info, nodesize);
 if (!root->node) {
  test_std_err(TEST_ALLOC_ROOT);
  goto out;
 }

 btrfs_set_header_nritems(root->node, 0);
 btrfs_set_header_level(root->node, 0);
 BTRFS_I(inode)->root = root;
 ret = -EINVAL;





 insert_inode_item_key(root);
 insert_extent(root, sectorsize, sectorsize, sectorsize, 0, sectorsize,
        sectorsize, BTRFS_FILE_EXTENT_REG, 0, 1);
 em = btrfs_get_extent(BTRFS_I(inode), ((void*)0), 0, 0, 2 * sectorsize, 0);
 if (IS_ERR(em)) {
  test_err("got an error when we shouldn't have");
  goto out;
 }
 if (em->block_start != EXTENT_MAP_HOLE) {
  test_err("expected a hole, got %llu", em->block_start);
  goto out;
 }
 if (em->start != 0 || em->len != sectorsize) {
  test_err(
 "unexpected extent wanted start 0 len %u, got start %llu len %llu",
   sectorsize, em->start, em->len);
  goto out;
 }
 if (em->flags != vacancy_only) {
  test_err("wrong flags, wanted %lu, have %lu", vacancy_only,
    em->flags);
  goto out;
 }
 free_extent_map(em);

 em = btrfs_get_extent(BTRFS_I(inode), ((void*)0), 0, sectorsize,
   2 * sectorsize, 0);
 if (IS_ERR(em)) {
  test_err("got an error when we shouldn't have");
  goto out;
 }
 if (em->block_start != sectorsize) {
  test_err("expected a real extent, got %llu", em->block_start);
  goto out;
 }
 if (em->start != sectorsize || em->len != sectorsize) {
  test_err(
 "unexpected extent wanted start %u len %u, got start %llu len %llu",
   sectorsize, sectorsize, em->start, em->len);
  goto out;
 }
 if (em->flags != 0) {
  test_err("unexpected flags set, wanted 0 got %lu",
    em->flags);
  goto out;
 }
 ret = 0;
out:
 if (!IS_ERR(em))
  free_extent_map(em);
 iput(inode);
 btrfs_free_dummy_root(root);
 btrfs_free_dummy_fs_info(fs_info);
 return ret;
}

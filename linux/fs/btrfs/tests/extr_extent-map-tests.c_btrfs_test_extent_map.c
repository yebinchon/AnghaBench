
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_map_tree {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int TEST_ALLOC_FS_INFO ;
 struct btrfs_fs_info* btrfs_alloc_dummy_fs_info (int ,int ) ;
 int btrfs_free_dummy_fs_info (struct btrfs_fs_info*) ;
 int extent_map_tree_init (struct extent_map_tree*) ;
 int kfree (struct extent_map_tree*) ;
 struct extent_map_tree* kzalloc (int,int ) ;
 int test_case_1 (struct btrfs_fs_info*,struct extent_map_tree*) ;
 int test_case_2 (struct btrfs_fs_info*,struct extent_map_tree*) ;
 int test_case_3 (struct btrfs_fs_info*,struct extent_map_tree*) ;
 int test_case_4 (struct btrfs_fs_info*,struct extent_map_tree*) ;
 int test_msg (char*) ;
 int test_std_err (int ) ;

int btrfs_test_extent_map(void)
{
 struct btrfs_fs_info *fs_info = ((void*)0);
 struct extent_map_tree *em_tree;
 int ret = 0;

 test_msg("running extent_map tests");





 fs_info = btrfs_alloc_dummy_fs_info(PAGE_SIZE, PAGE_SIZE);
 if (!fs_info) {
  test_std_err(TEST_ALLOC_FS_INFO);
  return -ENOMEM;
 }

 em_tree = kzalloc(sizeof(*em_tree), GFP_KERNEL);
 if (!em_tree) {
  ret = -ENOMEM;
  goto out;
 }

 extent_map_tree_init(em_tree);

 ret = test_case_1(fs_info, em_tree);
 if (ret)
  goto out;
 ret = test_case_2(fs_info, em_tree);
 if (ret)
  goto out;
 ret = test_case_3(fs_info, em_tree);
 if (ret)
  goto out;
 ret = test_case_4(fs_info, em_tree);

out:
 kfree(em_tree);
 btrfs_free_dummy_fs_info(fs_info);

 return ret;
}

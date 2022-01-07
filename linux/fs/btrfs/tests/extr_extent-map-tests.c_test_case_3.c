
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_map_tree {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;


 int SZ_1K ;
 int SZ_8K ;
 int __test_case_3 (struct btrfs_fs_info*,struct extent_map_tree*,int) ;

__attribute__((used)) static int test_case_3(struct btrfs_fs_info *fs_info,
  struct extent_map_tree *em_tree)
{
 int ret;

 ret = __test_case_3(fs_info, em_tree, 0);
 if (ret)
  return ret;
 ret = __test_case_3(fs_info, em_tree, SZ_8K);
 if (ret)
  return ret;
 ret = __test_case_3(fs_info, em_tree, (12 * SZ_1K));

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int test_func_t ;


 int ARRAY_SIZE (int *) ;
 int BTRFS_FREE_SPACE_BITMAP_BITS ;
 int PAGE_SIZE ;
 int run_test_both_formats (int ,int,int,int) ;
 int test_empty_block_group ;
 int test_merge_both ;
 int test_merge_left ;
 int test_merge_none ;
 int test_merge_right ;
 int test_msg (char*) ;
 int test_remove_all ;
 int test_remove_beginning ;
 int test_remove_end ;
 int test_remove_middle ;

int btrfs_test_free_space_tree(u32 sectorsize, u32 nodesize)
{
 test_func_t tests[] = {
  test_empty_block_group,
  test_remove_all,
  test_remove_beginning,
  test_remove_end,
  test_remove_middle,
  test_merge_left,
  test_merge_right,
  test_merge_both,
  test_merge_none,
 };
 u32 bitmap_alignment;
 int test_ret = 0;
 int i;





 bitmap_alignment = BTRFS_FREE_SPACE_BITMAP_BITS * PAGE_SIZE;

 test_msg("running free space tree tests");
 for (i = 0; i < ARRAY_SIZE(tests); i++) {
  int ret;

  ret = run_test_both_formats(tests[i], sectorsize, nodesize,
         sectorsize);
  if (ret)
   test_ret = ret;

  ret = run_test_both_formats(tests[i], sectorsize, nodesize,
         bitmap_alignment);
  if (ret)
   test_ret = ret;
 }

 return test_ret;
}

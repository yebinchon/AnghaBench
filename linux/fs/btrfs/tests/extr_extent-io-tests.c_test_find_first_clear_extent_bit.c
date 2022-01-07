
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_io_tree {int dummy; } ;


 int CHUNK_ALLOCATED ;
 int CHUNK_TRIMMED ;
 int EINVAL ;
 int IO_TREE_SELFTEST ;
 int SZ_1M ;
 int SZ_2M ;
 int SZ_32M ;
 int SZ_4M ;
 int SZ_512K ;
 int SZ_64M ;
 int SZ_8M ;
 int clear_extent_bits (struct extent_io_tree*,int ,int,int) ;
 int extent_io_tree_init (int *,struct extent_io_tree*,int ,int *) ;
 int find_first_clear_extent_bit (struct extent_io_tree*,int,int*,int*,int) ;
 int set_extent_bits (struct extent_io_tree*,int,int,int) ;
 int test_err (char*,int,int) ;
 int test_msg (char*) ;

__attribute__((used)) static int test_find_first_clear_extent_bit(void)
{
 struct extent_io_tree tree;
 u64 start, end;
 int ret = -EINVAL;

 test_msg("running find_first_clear_extent_bit test");
 extent_io_tree_init(((void*)0), &tree, IO_TREE_SELFTEST, ((void*)0));





 set_extent_bits(&tree, SZ_1M, SZ_4M - 1,
   CHUNK_TRIMMED | CHUNK_ALLOCATED);

 find_first_clear_extent_bit(&tree, SZ_512K, &start, &end,
        CHUNK_TRIMMED | CHUNK_ALLOCATED);

 if (start != 0 || end != SZ_1M - 1) {
  test_err("error finding beginning range: start %llu end %llu",
    start, end);
  goto out;
 }


 set_extent_bits(&tree, SZ_32M, SZ_64M - 1,
   CHUNK_TRIMMED | CHUNK_ALLOCATED);




 find_first_clear_extent_bit(&tree, 12 * SZ_1M, &start, &end,
        CHUNK_TRIMMED | CHUNK_ALLOCATED);

 if (start != SZ_4M || end != SZ_32M - 1) {
  test_err("error finding trimmed range: start %llu end %llu",
    start, end);
  goto out;
 }





 find_first_clear_extent_bit(&tree, SZ_2M, &start, &end,
        CHUNK_TRIMMED | CHUNK_ALLOCATED);

 if (start != SZ_4M || end != SZ_32M - 1) {
  test_err("error finding next unalloc range: start %llu end %llu",
    start, end);
  goto out;
 }





 set_extent_bits(&tree, SZ_64M, SZ_64M + SZ_8M - 1, CHUNK_ALLOCATED);
 find_first_clear_extent_bit(&tree, SZ_64M + SZ_1M, &start, &end,
        CHUNK_TRIMMED);

 if (start != SZ_64M || end != SZ_64M + SZ_8M - 1) {
  test_err("error finding exact range: start %llu end %llu",
    start, end);
  goto out;
 }

 find_first_clear_extent_bit(&tree, SZ_64M - SZ_8M, &start, &end,
        CHUNK_TRIMMED);





 if (start != SZ_64M || end != SZ_64M + SZ_8M - 1) {
  test_err("error finding next alloc range: start %llu end %llu",
    start, end);
  goto out;
 }





 find_first_clear_extent_bit(&tree, -1, &start, &end, CHUNK_TRIMMED);
 if (start != SZ_64M + SZ_8M || end != -1) {
  test_err(
  "error handling beyond end of range search: start %llu end %llu",
   start, end);
  goto out;
 }

 ret = 0;
out:
 clear_extent_bits(&tree, 0, (u64)-1, CHUNK_TRIMMED | CHUNK_ALLOCATED);

 return ret;
}

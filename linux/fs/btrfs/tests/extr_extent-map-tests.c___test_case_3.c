
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_map_tree {int lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ block_start; scalar_t__ block_len; } ;
struct btrfs_fs_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 void* SZ_16K ;
 void* SZ_4K ;
 int TEST_ALLOC_EXTENT_MAP ;
 int add_extent_mapping (struct extent_map_tree*,struct extent_map*,int ) ;
 struct extent_map* alloc_extent_map () ;
 int btrfs_add_extent_mapping (struct btrfs_fs_info*,struct extent_map_tree*,struct extent_map**,scalar_t__,scalar_t__) ;
 scalar_t__ extent_map_end (struct extent_map*) ;
 int free_extent_map (struct extent_map*) ;
 int free_extent_map_tree (struct extent_map_tree*) ;
 int test_err (char*,...) ;
 int test_std_err (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int __test_case_3(struct btrfs_fs_info *fs_info,
  struct extent_map_tree *em_tree, u64 start)
{
 struct extent_map *em;
 u64 len = SZ_4K;
 int ret;

 em = alloc_extent_map();
 if (!em) {
  test_std_err(TEST_ALLOC_EXTENT_MAP);
  return -ENOMEM;
 }


 em->start = SZ_4K;
 em->len = SZ_4K;
 em->block_start = SZ_4K;
 em->block_len = SZ_4K;
 write_lock(&em_tree->lock);
 ret = add_extent_mapping(em_tree, em, 0);
 write_unlock(&em_tree->lock);
 if (ret < 0) {
  test_err("cannot add extent range [4K, 8K)");
  goto out;
 }
 free_extent_map(em);

 em = alloc_extent_map();
 if (!em) {
  test_std_err(TEST_ALLOC_EXTENT_MAP);
  ret = -ENOMEM;
  goto out;
 }


 em->start = 0;
 em->len = SZ_16K;
 em->block_start = 0;
 em->block_len = SZ_16K;
 write_lock(&em_tree->lock);
 ret = btrfs_add_extent_mapping(fs_info, em_tree, &em, start, len);
 write_unlock(&em_tree->lock);
 if (ret) {
  test_err("case3 [0x%llx 0x%llx): ret %d",
    start, start + len, ret);
  goto out;
 }




 if (em &&
     (start < em->start || start + len > extent_map_end(em) ||
      em->start != em->block_start || em->len != em->block_len)) {
  test_err(
"case3 [0x%llx 0x%llx): ret %d em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx)",
    start, start + len, ret, em->start, em->len,
    em->block_start, em->block_len);
  ret = -EINVAL;
 }
 free_extent_map(em);
out:
 free_extent_map_tree(em_tree);

 return ret;
}

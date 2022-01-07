
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int test_func_t ;


 int run_test (int ,int,int ,int ,int ) ;
 int test_err (char*,int ,int ,int ,int ) ;

__attribute__((used)) static int run_test_both_formats(test_func_t test_func, u32 sectorsize,
     u32 nodesize, u32 alignment)
{
 int test_ret = 0;
 int ret;

 ret = run_test(test_func, 0, sectorsize, nodesize, alignment);
 if (ret) {
  test_err(
 "%ps failed with extents, sectorsize=%u, nodesize=%u, alignment=%u",
    test_func, sectorsize, nodesize, alignment);
  test_ret = ret;
 }

 ret = run_test(test_func, 1, sectorsize, nodesize, alignment);
 if (ret) {
  test_err(
 "%ps failed with bitmaps, sectorsize=%u, nodesize=%u, alignment=%u",
    test_func, sectorsize, nodesize, alignment);
  test_ret = ret;
 }

 return test_ret;
}

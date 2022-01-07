
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int test_eb_bitmaps (int ,int ) ;
 int test_find_delalloc (int ) ;
 int test_find_first_clear_extent_bit () ;
 int test_msg (char*) ;

int btrfs_test_extent_io(u32 sectorsize, u32 nodesize)
{
 int ret;

 test_msg("running extent I/O tests");

 ret = test_find_delalloc(sectorsize);
 if (ret)
  goto out;

 ret = test_find_first_clear_extent_bit();
 if (ret)
  goto out;

 ret = test_eb_bitmaps(sectorsize, nodesize);
out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXTENT_FLAG_COMPRESSED ;
 int EXTENT_FLAG_PREALLOC ;
 int compressed_only ;
 int prealloc_only ;
 int set_bit (int ,int *) ;
 int test_btrfs_get_extent (int ,int ) ;
 int test_extent_accounting (int ,int ) ;
 int test_hole_first (int ,int ) ;
 int test_msg (char*) ;

int btrfs_test_inodes(u32 sectorsize, u32 nodesize)
{
 int ret;

 test_msg("running inode tests");

 set_bit(EXTENT_FLAG_COMPRESSED, &compressed_only);
 set_bit(EXTENT_FLAG_PREALLOC, &prealloc_only);

 ret = test_btrfs_get_extent(sectorsize, nodesize);
 if (ret)
  return ret;
 ret = test_hole_first(sectorsize, nodesize);
 if (ret)
  return ret;
 return test_extent_accounting(sectorsize, nodesize);
}

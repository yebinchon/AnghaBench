
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int test_btrfs_split_item (int ,int ) ;
 int test_msg (char*) ;

int btrfs_test_extent_buffer_operations(u32 sectorsize, u32 nodesize)
{
 test_msg("running extent buffer operation tests");
 return test_btrfs_split_item(sectorsize, nodesize);
}

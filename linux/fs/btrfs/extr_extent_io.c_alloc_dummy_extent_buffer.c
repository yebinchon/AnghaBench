
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int nodesize; } ;


 struct extent_buffer* __alloc_dummy_extent_buffer (struct btrfs_fs_info*,int ,int ) ;

struct extent_buffer *alloc_dummy_extent_buffer(struct btrfs_fs_info *fs_info,
      u64 start)
{
 return __alloc_dummy_extent_buffer(fs_info, start, fs_info->nodesize);
}

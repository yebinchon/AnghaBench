
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BTRFS_FILE_EXTENT_INLINE_DATA_START ;

__attribute__((used)) static inline u32 btrfs_file_extent_calc_inline_size(u32 datasize)
{
 return BTRFS_FILE_EXTENT_INLINE_DATA_START + datasize;
}

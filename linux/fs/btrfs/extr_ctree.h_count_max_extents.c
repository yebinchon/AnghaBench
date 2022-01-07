
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ BTRFS_MAX_EXTENT_SIZE ;
 int div_u64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline u32 count_max_extents(u64 size)
{
 return div_u64(size + BTRFS_MAX_EXTENT_SIZE - 1, BTRFS_MAX_EXTENT_SIZE);
}

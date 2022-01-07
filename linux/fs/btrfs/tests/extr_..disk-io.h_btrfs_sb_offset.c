
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BTRFS_SUPER_INFO_OFFSET ;
 int BTRFS_SUPER_MIRROR_SHIFT ;
 int SZ_16K ;

__attribute__((used)) static inline u64 btrfs_sb_offset(int mirror)
{
 u64 start = SZ_16K;
 if (mirror)
  return start << (BTRFS_SUPER_MIRROR_SHIFT * mirror);
 return BTRFS_SUPER_INFO_OFFSET;
}

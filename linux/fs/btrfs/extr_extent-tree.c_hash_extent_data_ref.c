
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int lenum ;
typedef int __le64 ;


 scalar_t__ btrfs_crc32c (scalar_t__,int *,int) ;
 int cpu_to_le64 (int) ;

u64 hash_extent_data_ref(u64 root_objectid, u64 owner, u64 offset)
{
 u32 high_crc = ~(u32)0;
 u32 low_crc = ~(u32)0;
 __le64 lenum;

 lenum = cpu_to_le64(root_objectid);
 high_crc = btrfs_crc32c(high_crc, &lenum, sizeof(lenum));
 lenum = cpu_to_le64(owner);
 low_crc = btrfs_crc32c(low_crc, &lenum, sizeof(lenum));
 lenum = cpu_to_le64(offset);
 low_crc = btrfs_crc32c(low_crc, &lenum, sizeof(lenum));

 return ((u64)high_crc << 31) ^ (u64)low_crc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;




__attribute__((used)) static bool btrfs_supported_super_csum(u16 csum_type)
{
 switch (csum_type) {
 case 128:
  return 1;
 default:
  return 0;
 }
}

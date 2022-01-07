
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static inline void btrfs_crc32c_final(u32 crc, u8 *result)
{
 put_unaligned_le32(~crc, result);
}

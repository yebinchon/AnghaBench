
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crc32c (int ,void const*,unsigned int) ;

__attribute__((used)) static inline u32 btrfs_crc32c(u32 crc, const void *address, unsigned length)
{
 return crc32c(crc, address, length);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ get_unaligned_be32 (int *) ;

__attribute__((used)) static inline u32 get_unaligned_be24(u8 *buf)
{
 return 0xffffff & (u32) get_unaligned_be32(buf - 1);
}

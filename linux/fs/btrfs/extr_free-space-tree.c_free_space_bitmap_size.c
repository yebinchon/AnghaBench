
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ div_u64 (int ,int ) ;

__attribute__((used)) static inline u32 free_space_bitmap_size(u64 size, u32 sectorsize)
{
 return DIV_ROUND_UP((u32)div_u64(size, sectorsize), BITS_PER_BYTE);
}

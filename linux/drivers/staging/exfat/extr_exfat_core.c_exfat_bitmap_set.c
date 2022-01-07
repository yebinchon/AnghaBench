
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t BITMAP_LOC (int) ;
 int BITMAP_SHIFT (int) ;

__attribute__((used)) static inline void exfat_bitmap_set(u8 *bitmap, int i)
{
 bitmap[BITMAP_LOC(i)] |= (0x01 << BITMAP_SHIFT(i));
}

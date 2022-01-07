
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VGA_IS1_RC ;
 scalar_t__ paletteEnabled ;
 int vga_r (int *,int ) ;
 int vga_wattr (int *,int,int) ;

__attribute__((used)) static inline void VGAwATTR(u8 index, u8 value)
{
 if (paletteEnabled)
  index &= ~0x20;
 else
  index |= 0x20;

 vga_r(((void*)0), VGA_IS1_RC);
 vga_wattr(((void*)0), index, value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {scalar_t__ paletteEnabled; } ;


 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,int,struct savagefb_par*) ;

__attribute__((used)) static inline void VGAwATTR(u8 index, u8 value, struct savagefb_par *par)
{
 if (par->paletteEnabled)
  index &= ~0x20;
 else
  index |= 0x20;

 vga_in8(0x3da, par);
 vga_out8(0x3c0, index, par);
 vga_out8 (0x3c0, value, par);
}

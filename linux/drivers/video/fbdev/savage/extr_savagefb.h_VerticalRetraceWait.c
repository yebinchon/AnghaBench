
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;


 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,int,struct savagefb_par*) ;

__attribute__((used)) static inline void VerticalRetraceWait(struct savagefb_par *par)
{
 vga_out8(0x3d4, 0x17, par);
 if (vga_in8(0x3d5, par) & 0x80) {
  while ((vga_in8(0x3da, par) & 0x08) == 0x08);
  while ((vga_in8(0x3da, par) & 0x08) == 0x00);
 }
}

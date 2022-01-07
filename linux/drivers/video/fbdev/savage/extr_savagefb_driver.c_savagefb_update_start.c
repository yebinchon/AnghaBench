
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;


 int vga_out16 (int,int,struct savagefb_par*) ;
 int vga_out8 (int,int,struct savagefb_par*) ;

__attribute__((used)) static void savagefb_update_start(struct savagefb_par *par, int base)
{

 vga_out16(0x3d4, (base & 0x00ff00) | 0x0c, par);
 vga_out16(0x3d4, ((base & 0x00ff) << 8) | 0x0d, par);
 vga_out8(0x3d4, 0x69, par);
 vga_out8(0x3d5, (base & 0x7f0000) >> 16, par);
}

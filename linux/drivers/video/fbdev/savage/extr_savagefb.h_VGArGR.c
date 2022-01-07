
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct savagefb_par {int dummy; } ;


 int vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,int ,struct savagefb_par*) ;

__attribute__((used)) static inline u8 VGArGR (u8 index, struct savagefb_par *par)
{
 vga_out8(0x3ce, index, par);
 return vga_in8(0x3cf, par);
}

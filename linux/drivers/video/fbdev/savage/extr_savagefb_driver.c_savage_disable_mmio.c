
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {scalar_t__ chip; } ;


 int DBG (char*) ;
 scalar_t__ S3_SAVAGE4 ;
 unsigned char vga_in8 (int,struct savagefb_par*) ;
 int vga_out8 (int,unsigned char,struct savagefb_par*) ;

__attribute__((used)) static void savage_disable_mmio(struct savagefb_par *par)
{
 unsigned char val;

 DBG("savage_disable_mmio\n");

 if (par->chip >= S3_SAVAGE4) {
  vga_out8(0x3d4, 0x40, par);
  val = vga_in8(0x3d5, par);
  vga_out8(0x3d5, val | 1, par);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_par {int dummy; } ;


 int ATT_IW ;
 int IS1_R ;
 int mb () ;
 int vga_inb (struct tdfx_par*,int ) ;
 int vga_outb (struct tdfx_par*,int ,int) ;

__attribute__((used)) static inline void vga_enable_palette(struct tdfx_par *par)
{
 vga_inb(par, IS1_R);
 mb();
 vga_outb(par, ATT_IW, 0x20);
}

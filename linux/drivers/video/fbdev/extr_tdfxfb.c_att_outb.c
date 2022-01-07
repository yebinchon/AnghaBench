
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tdfx_par {int dummy; } ;


 int ATT_IW ;
 int IS1_R ;
 unsigned char vga_inb (struct tdfx_par*,int ) ;
 int vga_outb (struct tdfx_par*,int ,int ) ;

__attribute__((used)) static inline void att_outb(struct tdfx_par *par, u32 idx, u8 val)
{
 unsigned char tmp;

 tmp = vga_inb(par, IS1_R);
 vga_outb(par, ATT_IW, idx);
 vga_outb(par, ATT_IW, val);
}

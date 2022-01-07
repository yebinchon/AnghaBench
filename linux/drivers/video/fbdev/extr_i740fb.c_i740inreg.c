
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct i740fb_par {int regs; } ;


 int vga_mm_r (int ,scalar_t__) ;
 int vga_mm_w (int ,scalar_t__,int ) ;

__attribute__((used)) static inline u8 i740inreg(struct i740fb_par *par, u16 port, u8 reg)
{
 vga_mm_w(par->regs, port, reg);
 return vga_mm_r(par->regs, port+1);
}

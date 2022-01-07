
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i740fb_par {int regs; } ;


 int i740inreg (struct i740fb_par*,int ,int) ;
 int vga_mm_w_fast (int ,int ,int,int) ;

__attribute__((used)) static inline void i740outreg_mask(struct i740fb_par *par, u16 port, u8 reg,
       u8 val, u8 mask)
{
 vga_mm_w_fast(par->regs, port, reg, (val & mask)
  | (i740inreg(par, port, reg) & ~mask));
}

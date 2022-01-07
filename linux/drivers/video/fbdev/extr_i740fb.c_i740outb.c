
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i740fb_par {int regs; } ;


 int vga_mm_w (int ,int ,int ) ;

__attribute__((used)) static inline void i740outb(struct i740fb_par *par, u16 port, u8 val)
{
 vga_mm_w(par->regs, port, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i740fb_par {int regs; } ;


 int vga_mm_r (int ,int ) ;

__attribute__((used)) static inline u8 i740inb(struct i740fb_par *par, u16 port)
{
 return vga_mm_r(par->regs, port);
}

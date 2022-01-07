
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PCIO; scalar_t__ paletteEnabled; scalar_t__ IOBase; } ;


 int VGA_ATT_IW ;
 int VGA_ATT_W ;
 int VGA_RD08 (int ,scalar_t__) ;
 int VGA_WR08 (int ,int ,int) ;

void NVWriteAttr(struct nvidia_par *par, u8 index, u8 value)
{
 volatile u8 tmp;

 tmp = VGA_RD08(par->PCIO, par->IOBase + 0x0a);
 if (par->paletteEnabled)
  index &= ~0x20;
 else
  index |= 0x20;
 VGA_WR08(par->PCIO, VGA_ATT_IW, index);
 VGA_WR08(par->PCIO, VGA_ATT_W, value);
}

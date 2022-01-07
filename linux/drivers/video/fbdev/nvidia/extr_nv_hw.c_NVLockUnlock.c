
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PCIO; } ;


 int VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,int) ;

void NVLockUnlock(struct nvidia_par *par, int Lock)
{
 u8 cr11;

 VGA_WR08(par->PCIO, 0x3D4, 0x1F);
 VGA_WR08(par->PCIO, 0x3D5, Lock ? 0x99 : 0x57);

 VGA_WR08(par->PCIO, 0x3D4, 0x11);
 cr11 = VGA_RD08(par->PCIO, 0x3D5);
 if (Lock)
  cr11 |= 0x80;
 else
  cr11 &= ~0x80;
 VGA_WR08(par->PCIO, 0x3D5, cr11);
}

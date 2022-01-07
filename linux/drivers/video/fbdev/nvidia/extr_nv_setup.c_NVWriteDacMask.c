
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {int PDIO; } ;


 int VGA_PEL_MSK ;
 int VGA_WR08 (int ,int ,int ) ;

void NVWriteDacMask(struct nvidia_par *par, u8 value)
{
 VGA_WR08(par->PDIO, VGA_PEL_MSK, value);
}

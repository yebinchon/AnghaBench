
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvidia_par {scalar_t__ IOBase; int PCIO; } ;


 int VGA_WR08 (int ,scalar_t__,int ) ;

void NVWriteCrtc(struct nvidia_par *par, u8 index, u8 value)
{
 VGA_WR08(par->PCIO, par->IOBase + 0x04, index);
 VGA_WR08(par->PCIO, par->IOBase + 0x05, value);
}

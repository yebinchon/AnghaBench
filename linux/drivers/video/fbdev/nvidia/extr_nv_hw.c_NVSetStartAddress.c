
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvidia_par {int PCRTC; } ;


 int NV_WR32 (int ,int,int ) ;

void NVSetStartAddress(struct nvidia_par *par, u32 start)
{
 NV_WR32(par->PCRTC, 0x800, start);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {scalar_t__ chip_id; } ;


 int BiosReg ;
 scalar_t__ CYBERBLADEXPAi1 ;
 int HorStretch ;
 int VertStretch ;
 int read3CE (struct tridentfb_par*,int ) ;
 int write3CE (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static void screen_stretch(struct tridentfb_par *par)
{
 if (par->chip_id != CYBERBLADEXPAi1)
  write3CE(par, BiosReg, 0);
 else
  write3CE(par, BiosReg, 8);
 write3CE(par, VertStretch, (read3CE(par, VertStretch) & 0x7C) | 1);
 write3CE(par, HorStretch, (read3CE(par, HorStretch) & 0x7C) | 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int HorStretch ;
 int VertStretch ;
 int read3CE (struct tridentfb_par*,int ) ;
 int write3CE (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static inline void screen_center(struct tridentfb_par *par)
{
 write3CE(par, VertStretch, (read3CE(par, VertStretch) & 0x7C) | 0x80);
 write3CE(par, HorStretch, (read3CE(par, HorStretch) & 0x7C) | 0x80);
}

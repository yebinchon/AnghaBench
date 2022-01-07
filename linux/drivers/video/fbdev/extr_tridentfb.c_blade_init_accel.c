
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int writemmr (struct tridentfb_par*,int,int) ;

__attribute__((used)) static void blade_init_accel(struct tridentfb_par *par, int pitch, int bpp)
{
 int v1 = (pitch >> 3) << 20;
 int tmp = bpp == 24 ? 2 : (bpp >> 4);
 int v2 = v1 | (tmp << 29);

 writemmr(par, 0x21C0, v2);
 writemmr(par, 0x21C4, v2);
 writemmr(par, 0x21B8, v2);
 writemmr(par, 0x21BC, v2);
 writemmr(par, 0x21D0, v1);
 writemmr(par, 0x21D4, v1);
 writemmr(par, 0x21C8, v1);
 writemmr(par, 0x21CC, v1);
 writemmr(par, 0x216C, 0);
}

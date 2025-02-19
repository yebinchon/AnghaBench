
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tridentfb_par {int dummy; } ;


 int DRAWFL ;
 int OLDCMD ;
 int OLDDIM ;
 int OLDDST ;
 int OLDSRC ;
 int ROP_S ;
 int point (scalar_t__,scalar_t__) ;
 int t_outb (struct tridentfb_par*,int,int) ;
 int writemmr (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static void xp_copy_rect(struct tridentfb_par *par,
    u32 x1, u32 y1, u32 x2, u32 y2, u32 w, u32 h)
{
 u32 x1_tmp, x2_tmp, y1_tmp, y2_tmp;
 int direction = 0x0004;

 if ((x1 < x2) && (y1 == y2)) {
  direction |= 0x0200;
  x1_tmp = x1 + w - 1;
  x2_tmp = x2 + w - 1;
 } else {
  x1_tmp = x1;
  x2_tmp = x2;
 }

 if (y1 < y2) {
  direction |= 0x0100;
  y1_tmp = y1 + h - 1;
  y2_tmp = y2 + h - 1;
 } else {
  y1_tmp = y1;
  y2_tmp = y2;
 }

 writemmr(par, DRAWFL, direction);
 t_outb(par, ROP_S, 0x2127);
 writemmr(par, OLDSRC, point(y1_tmp, x1_tmp));
 writemmr(par, OLDDST, point(y2_tmp, x2_tmp));
 writemmr(par, OLDDIM, point(h, w));
 t_outb(par, 0x01, OLDCMD);
}

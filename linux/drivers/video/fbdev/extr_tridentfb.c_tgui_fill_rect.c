
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tridentfb_par {int dummy; } ;


 int DRAWFL ;
 int OLDCLR ;
 int OLDCMD ;
 int OLDDIM ;
 int OLDDST ;
 int ROP_P ;
 int point (int,int) ;
 int t_outb (struct tridentfb_par*,int,int) ;
 int writemmr (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static void tgui_fill_rect(struct tridentfb_par *par,
      u32 x, u32 y, u32 w, u32 h, u32 c, u32 rop)
{
 t_outb(par, ROP_P, 0x2127);
 writemmr(par, OLDCLR, c);
 writemmr(par, DRAWFL, 0x4020);
 writemmr(par, OLDDIM, point(w - 1, h - 1));
 writemmr(par, OLDDST, point(x, y));
 t_outb(par, 1, OLDCMD);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct aty128fb_par {int fifo_slots; } ;


 int GUI_STAT ;
 int aty128_reset_engine (struct aty128fb_par*) ;
 int aty_ld_le32 (int ) ;

__attribute__((used)) static void do_wait_for_fifo(u16 entries, struct aty128fb_par *par)
{
 int i;

 for (;;) {
  for (i = 0; i < 2000000; i++) {
   par->fifo_slots = aty_ld_le32(GUI_STAT) & 0x0fff;
   if (par->fifo_slots >= entries)
    return;
  }
  aty128_reset_engine(par);
 }
}

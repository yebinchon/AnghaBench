
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aty128fb_par {scalar_t__ blitter_may_be_busy; } ;


 int GUI_STAT ;
 int aty128_flush_pixel_cache (struct aty128fb_par*) ;
 int aty128_reset_engine (struct aty128fb_par*) ;
 int aty_ld_le32 (int ) ;
 int do_wait_for_fifo (int,struct aty128fb_par*) ;

__attribute__((used)) static void wait_for_idle(struct aty128fb_par *par)
{
 int i;

 do_wait_for_fifo(64, par);

 for (;;) {
  for (i = 0; i < 2000000; i++) {
   if (!(aty_ld_le32(GUI_STAT) & (1 << 31))) {
    aty128_flush_pixel_cache(par);
    par->blitter_may_be_busy = 0;
    return;
   }
  }
  aty128_reset_engine(par);
 }
}

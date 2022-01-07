
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atyfb_par {scalar_t__ blitter_may_be_busy; } ;


 int GUI_STAT ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;
 int wait_for_fifo (int,struct atyfb_par*) ;

__attribute__((used)) static inline void wait_for_idle(struct atyfb_par *par)
{
 wait_for_fifo(16, par);
 while ((aty_ld_le32(GUI_STAT, par) & 1) != 0);
 par->blitter_may_be_busy = 0;
}

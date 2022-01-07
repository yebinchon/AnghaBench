
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int dummy; } ;


 int CURSOR_A_PALETTE0 ;
 int CURSOR_A_PALETTE1 ;
 int CURSOR_A_PALETTE2 ;
 int CURSOR_A_PALETTE3 ;
 int CURSOR_PALETTE_MASK ;
 int DBG_MSG (char*) ;
 int OUTREG (int ,int) ;

void intelfbhw_cursor_setcolor(struct intelfb_info *dinfo, u32 bg, u32 fg)
{




 OUTREG(CURSOR_A_PALETTE0, bg & CURSOR_PALETTE_MASK);
 OUTREG(CURSOR_A_PALETTE1, fg & CURSOR_PALETTE_MASK);
 OUTREG(CURSOR_A_PALETTE2, fg & CURSOR_PALETTE_MASK);
 OUTREG(CURSOR_A_PALETTE3, bg & CURSOR_PALETTE_MASK);
}

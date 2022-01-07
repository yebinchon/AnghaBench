
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int physical; } ;
struct intelfb_info {TYPE_1__ cursor; } ;


 int CURSOR_A_BASEADDR ;
 int CURSOR_A_POSITION ;
 int CURSOR_POS_MASK ;
 int CURSOR_X_SHIFT ;
 int CURSOR_Y_SHIFT ;
 int DBG_MSG (char*,int,int) ;
 scalar_t__ IS_I9XX (struct intelfb_info*) ;
 int OUTREG (int ,int) ;

void intelfbhw_cursor_setpos(struct intelfb_info *dinfo, int x, int y)
{
 u32 tmp;
 tmp = ((x & CURSOR_POS_MASK) << CURSOR_X_SHIFT) |
       ((y & CURSOR_POS_MASK) << CURSOR_Y_SHIFT);
 OUTREG(CURSOR_A_POSITION, tmp);

 if (IS_I9XX(dinfo))
  OUTREG(CURSOR_A_BASEADDR, dinfo->cursor.physical);
}

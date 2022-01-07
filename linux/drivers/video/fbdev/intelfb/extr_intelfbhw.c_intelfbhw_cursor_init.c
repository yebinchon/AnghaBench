
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int physical; int offset; } ;
struct intelfb_info {TYPE_1__ cursor; scalar_t__ mobile; } ;


 int CURSOR_A_BASEADDR ;
 int CURSOR_A_CONTROL ;
 int CURSOR_CONTROL ;
 int CURSOR_ENABLE ;
 int CURSOR_FORMAT_3C ;
 int CURSOR_FORMAT_MASK ;
 int CURSOR_GAMMA_ENABLE ;
 int CURSOR_MEM_TYPE_LOCAL ;
 int CURSOR_MOBILE_GAMMA_ENABLE ;
 int CURSOR_MODE_DISABLE ;
 int CURSOR_MODE_MASK ;
 int CURSOR_PIPE_SELECT_SHIFT ;
 int CURSOR_SIZE ;
 int CURSOR_SIZE_H_SHIFT ;
 int CURSOR_SIZE_V_SHIFT ;
 int CURSOR_STRIDE_MASK ;
 int DBG_MSG (char*) ;
 int INREG (int ) ;
 scalar_t__ IS_I9XX (struct intelfb_info*) ;
 int OUTREG (int ,int) ;

void intelfbhw_cursor_init(struct intelfb_info *dinfo)
{
 u32 tmp;





 if (dinfo->mobile || IS_I9XX(dinfo)) {
  if (!dinfo->cursor.physical)
   return;
  tmp = INREG(CURSOR_A_CONTROL);
  tmp &= ~(CURSOR_MODE_MASK | CURSOR_MOBILE_GAMMA_ENABLE |
    CURSOR_MEM_TYPE_LOCAL |
    (1 << CURSOR_PIPE_SELECT_SHIFT));
  tmp |= CURSOR_MODE_DISABLE;
  OUTREG(CURSOR_A_CONTROL, tmp);
  OUTREG(CURSOR_A_BASEADDR, dinfo->cursor.physical);
 } else {
  tmp = INREG(CURSOR_CONTROL);
  tmp &= ~(CURSOR_FORMAT_MASK | CURSOR_GAMMA_ENABLE |
    CURSOR_ENABLE | CURSOR_STRIDE_MASK);
  tmp |= CURSOR_FORMAT_3C;
  OUTREG(CURSOR_CONTROL, tmp);
  OUTREG(CURSOR_A_BASEADDR, dinfo->cursor.offset << 12);
  tmp = (64 << CURSOR_SIZE_H_SHIFT) |
        (64 << CURSOR_SIZE_V_SHIFT);
  OUTREG(CURSOR_SIZE, tmp);
 }
}

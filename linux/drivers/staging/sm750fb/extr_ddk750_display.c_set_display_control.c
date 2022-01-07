
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CRT_DISPLAY_CTRL ;
 unsigned long CRT_DISPLAY_CTRL_RESERVED_MASK ;
 unsigned long DISPLAY_CTRL_PLANE ;
 unsigned long DISPLAY_CTRL_TIMING ;
 unsigned long PANEL_DISPLAY_CTRL ;
 unsigned long PANEL_DISPLAY_CTRL_RESERVED_MASK ;
 unsigned long peek32 (unsigned long) ;
 int poke32 (unsigned long,unsigned long) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void set_display_control(int ctrl, int disp_state)
{

 unsigned long reg, val, reserved;
 int cnt = 0;

 if (!ctrl) {
  reg = PANEL_DISPLAY_CTRL;
  reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK;
 } else {
  reg = CRT_DISPLAY_CTRL;
  reserved = CRT_DISPLAY_CTRL_RESERVED_MASK;
 }

 val = peek32(reg);
 if (disp_state) {






  val |= DISPLAY_CTRL_TIMING;
  poke32(reg, val);

  val |= DISPLAY_CTRL_PLANE;






  do {
   cnt++;
   poke32(reg, val);
  } while ((peek32(reg) & ~reserved) != (val & ~reserved));
  pr_debug("Set Plane enbit:after tried %d times\n", cnt);
 } else {
  val &= ~DISPLAY_CTRL_PLANE;
  poke32(reg, val);

  val &= ~DISPLAY_CTRL_TIMING;
  poke32(reg, val);
 }
}

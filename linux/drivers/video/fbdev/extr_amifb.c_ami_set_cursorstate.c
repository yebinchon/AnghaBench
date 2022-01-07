
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_cursorstate {int mode; int yoffset; int xoffset; } ;
struct TYPE_2__ {int crsr_y; int crsr_x; } ;
struct amifb_par {TYPE_1__ crsr; } ;


 int FB_CURSOR_OFF ;
 int cursormode ;
 int cursorstate ;
 int do_cursor ;

__attribute__((used)) static int ami_set_cursorstate(struct fb_cursorstate *state,
          struct amifb_par *par)
{
 par->crsr.crsr_x = state->xoffset;
 par->crsr.crsr_y = state->yoffset;
 if ((cursormode = state->mode) == FB_CURSOR_OFF)
  cursorstate = -1;
 do_cursor = 1;
 return 0;
}

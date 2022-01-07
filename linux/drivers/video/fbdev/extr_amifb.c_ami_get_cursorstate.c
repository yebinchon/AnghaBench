
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_cursorstate {int mode; int yoffset; int xoffset; } ;
struct TYPE_2__ {int crsr_y; int crsr_x; } ;
struct amifb_par {TYPE_1__ crsr; } ;


 int cursormode ;

__attribute__((used)) static int ami_get_cursorstate(struct fb_cursorstate *state,
          const struct amifb_par *par)
{
 state->xoffset = par->crsr.crsr_x;
 state->yoffset = par->crsr.crsr_y;
 state->mode = cursormode;
 return 0;
}

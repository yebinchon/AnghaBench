
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_fix_cursorinfo {int crsr_color1; int crsr_color2; int crsr_ysize; int crsr_height; int crsr_xsize; int crsr_width; } ;
struct TYPE_2__ {int height; int width; } ;
struct amifb_par {TYPE_1__ crsr; } ;



__attribute__((used)) static int ami_get_fix_cursorinfo(struct fb_fix_cursorinfo *fix,
      const struct amifb_par *par)
{
 fix->crsr_width = fix->crsr_xsize = par->crsr.width;
 fix->crsr_height = fix->crsr_ysize = par->crsr.height;
 fix->crsr_color1 = 17;
 fix->crsr_color2 = 18;
 return 0;
}

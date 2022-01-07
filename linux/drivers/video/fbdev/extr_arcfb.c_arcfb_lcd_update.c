
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int dummy; } ;


 int arcfb_lcd_update_horiz (struct arcfb_par*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int ceil64 (unsigned int) ;
 unsigned int floor8 (unsigned int) ;
 unsigned int iceil8 (unsigned int) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static void arcfb_lcd_update(struct arcfb_par *par, unsigned int dx,
   unsigned int dy, unsigned int w, unsigned int h)
{
 unsigned int left, right, distance, y;


 y = floor8(dy);
 h += dy - y;
 h = iceil8(h);

 distance = w;
 left = dx;
 right = min(left + w - 1, ceil64(left));

 while (distance > 0) {
  arcfb_lcd_update_horiz(par, left, right, y, h);
  distance -= ((right - left) + 1);
  left = right + 1;
  right = min(left + distance - 1, ceil64(left));
 }
}

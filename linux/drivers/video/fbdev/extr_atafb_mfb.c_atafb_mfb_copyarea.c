
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u8 ;
struct fb_info {scalar_t__ screen_base; } ;


 int fb_memmove (int *,int *,int) ;

void atafb_mfb_copyarea(struct fb_info *info, u_long next_line,
   int sy, int sx, int dy, int dx,
   int height, int width)
{
 u8 *src, *dest;
 u_int rows;

 if (sx == 0 && dx == 0 && width == next_line) {
  src = (u8 *)info->screen_base + sy * (width >> 3);
  dest = (u8 *)info->screen_base + dy * (width >> 3);
  fb_memmove(dest, src, height * (width >> 3));
 } else if (dy <= sy) {
  src = (u8 *)info->screen_base + sy * next_line + (sx >> 3);
  dest = (u8 *)info->screen_base + dy * next_line + (dx >> 3);
  for (rows = height; rows--;) {
   fb_memmove(dest, src, width >> 3);
   src += next_line;
   dest += next_line;
  }
 } else {
  src = (u8 *)info->screen_base + (sy + height - 1) * next_line + (sx >> 3);
  dest = (u8 *)info->screen_base + (dy + height - 1) * next_line + (dx >> 3);
  for (rows = height; rows--;) {
   fb_memmove(dest, src, width >> 3);
   src -= next_line;
   dest -= next_line;
  }
 }
}

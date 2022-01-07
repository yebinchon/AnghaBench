
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u8 ;
typedef int u32 ;
struct fb_info {scalar_t__ screen_base; } ;



void atafb_mfb_linefill(struct fb_info *info, u_long next_line,
   int dy, int dx, u32 width,
   const u8 *data, u32 bgcolor, u32 fgcolor)
{
 u8 *dest;
 u_int rows;

 dest = (u8 *)info->screen_base + dy * next_line + (dx >> 3);

 for (rows = width / 8; rows--; ) {

  *dest++ = *data++;
 }
}

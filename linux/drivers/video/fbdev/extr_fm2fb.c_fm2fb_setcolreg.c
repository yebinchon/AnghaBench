
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u32 ;
struct fb_info {scalar_t__ pseudo_palette; } ;



__attribute__((used)) static int fm2fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
                         u_int transp, struct fb_info *info)
{
 if (regno < 16) {
  red >>= 8;
  green >>= 8;
  blue >>= 8;

  ((u32*)(info->pseudo_palette))[regno] = (red << 16) |
   (green << 8) | blue;
 }

 return 0;
}

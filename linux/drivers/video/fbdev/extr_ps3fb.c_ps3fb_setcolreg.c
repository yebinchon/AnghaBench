
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct fb_info {scalar_t__ pseudo_palette; } ;



__attribute__((used)) static int ps3fb_setcolreg(unsigned int regno, unsigned int red,
      unsigned int green, unsigned int blue,
      unsigned int transp, struct fb_info *info)
{
 if (regno >= 16)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;
 transp >>= 8;

 ((u32 *)info->pseudo_palette)[regno] = transp << 24 | red << 16 |
            green << 8 | blue;
 return 0;
}

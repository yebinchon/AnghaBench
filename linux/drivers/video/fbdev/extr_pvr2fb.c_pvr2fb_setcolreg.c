
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pvr2fb_par {int dummy; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct TYPE_3__ {unsigned int len; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_2__ var; TYPE_1__ cmap; scalar_t__ par; } ;


 int pr_debug (char*,int) ;
 int pvr2fb_set_pal_entry (struct pvr2fb_par*,unsigned int,unsigned int) ;

__attribute__((used)) static int pvr2fb_setcolreg(unsigned int regno, unsigned int red,
       unsigned int green, unsigned int blue,
                            unsigned int transp, struct fb_info *info)
{
 struct pvr2fb_par *par = (struct pvr2fb_par *)info->par;
 unsigned int tmp;

 if (regno > info->cmap.len)
  return 1;






 switch (info->var.bits_per_pixel) {
     case 16:
  tmp = (red & 0xf800) |
        ((green & 0xfc00) >> 5) |
        ((blue & 0xf800) >> 11);

  pvr2fb_set_pal_entry(par, regno, tmp);
  break;
     case 24:
  red >>= 8; green >>= 8; blue >>= 8;
  tmp = (red << 16) | (green << 8) | blue;
  break;
     case 32:
  red >>= 8; green >>= 8; blue >>= 8;
  tmp = (transp << 24) | (red << 16) | (green << 8) | blue;

  pvr2fb_set_pal_entry(par, regno, tmp);
  break;
     default:
  pr_debug("Invalid bit depth %d?!?\n", info->var.bits_per_pixel);
  return 1;
 }

 if (regno < 16)
  ((u32*)(info->pseudo_palette))[regno] = tmp;

 return 0;
}

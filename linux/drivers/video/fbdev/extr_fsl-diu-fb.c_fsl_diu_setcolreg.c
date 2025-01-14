
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_11__ {unsigned int offset; int length; } ;
struct TYPE_10__ {unsigned int offset; int length; } ;
struct TYPE_9__ {unsigned int offset; int length; } ;
struct TYPE_8__ {unsigned int offset; int length; } ;
struct TYPE_12__ {TYPE_5__ transp; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; scalar_t__ grayscale; } ;
struct TYPE_7__ {int visual; } ;
struct fb_info {unsigned int* pseudo_palette; TYPE_6__ var; TYPE_1__ fix; } ;


 unsigned int CNVT_TOHW (unsigned int,int ) ;


__attribute__((used)) static int fsl_diu_setcolreg(unsigned int regno, unsigned int red,
        unsigned int green, unsigned int blue,
        unsigned int transp, struct fb_info *info)
{
 int ret = 1;





 if (info->var.grayscale)
  red = green = blue = (19595 * red + 38470 * green +
          7471 * blue) >> 16;
 switch (info->fix.visual) {
 case 128:




  if (regno < 16) {
   u32 *pal = info->pseudo_palette;
   u32 v;

   red = CNVT_TOHW(red, info->var.red.length);
   green = CNVT_TOHW(green, info->var.green.length);
   blue = CNVT_TOHW(blue, info->var.blue.length);
   transp = CNVT_TOHW(transp, info->var.transp.length);

   v = (red << info->var.red.offset) |
       (green << info->var.green.offset) |
       (blue << info->var.blue.offset) |
       (transp << info->var.transp.offset);

   pal[regno] = v;
   ret = 0;
  }
  break;
 }

 return ret;
}

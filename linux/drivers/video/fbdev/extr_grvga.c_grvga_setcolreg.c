
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int u32 ;
struct grvga_par {TYPE_1__* regs; } ;
struct TYPE_13__ {unsigned int offset; int length; } ;
struct TYPE_12__ {unsigned int offset; int length; } ;
struct TYPE_11__ {unsigned int offset; int length; } ;
struct TYPE_10__ {unsigned int offset; int length; } ;
struct TYPE_14__ {TYPE_6__ transp; TYPE_5__ blue; TYPE_4__ green; TYPE_3__ red; scalar_t__ grayscale; } ;
struct TYPE_9__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_7__ var; TYPE_2__ fix; struct grvga_par* par; } ;
struct TYPE_8__ {int clut; } ;


 unsigned int CNVT_TOHW (unsigned int,int ) ;
 int EINVAL ;
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int __raw_writel (unsigned int,int *) ;

__attribute__((used)) static int grvga_setcolreg(unsigned regno, unsigned red, unsigned green, unsigned blue, unsigned transp, struct fb_info *info)
{
 struct grvga_par *par;
 par = info->par;

 if (regno >= 256)
  return -EINVAL;

 if (info->var.grayscale) {

  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 }





 red = ((((red)<<(info->var.red.length))+0x7FFF-(red))>>16);
 green = ((((green)<<(info->var.green.length))+0x7FFF-(green))>>16);
 blue = ((((blue)<<(info->var.blue.length))+0x7FFF-(blue))>>16);
 transp = ((((transp)<<(info->var.transp.length))+0x7FFF-(transp))>>16);




 if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
  __raw_writel((regno << 24) | (red << 16) | (green << 8) | blue,
        &par->regs->clut);


 else if (info->fix.visual == FB_VISUAL_TRUECOLOR) {
  u32 v;
  if (regno >= 16)
   return -EINVAL;


  v = (red << info->var.red.offset) |
   (green << info->var.green.offset) |
   (blue << info->var.blue.offset) |
   (transp << info->var.transp.offset);

  ((u32 *) (info->pseudo_palette))[regno] = v;
 }
 return 0;
}

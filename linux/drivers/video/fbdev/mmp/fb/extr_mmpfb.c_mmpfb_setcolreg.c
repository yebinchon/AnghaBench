
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mmpfb_info {int * pseudo_palette; } ;
struct TYPE_4__ {scalar_t__ visual; } ;
struct TYPE_3__ {int blue; int green; int red; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct mmpfb_info* par; } ;


 scalar_t__ FB_VISUAL_PSEUDOCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int chan_to_field (unsigned int,int *) ;
 int to_rgb (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int mmpfb_setcolreg(unsigned int regno, unsigned int red,
  unsigned int green, unsigned int blue,
  unsigned int trans, struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;
 u32 val;

 if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 16) {
  val = chan_to_field(red, &info->var.red);
  val |= chan_to_field(green, &info->var.green);
  val |= chan_to_field(blue , &info->var.blue);
  fbi->pseudo_palette[regno] = val;
 }

 if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR && regno < 256) {
  val = to_rgb(red, green, blue);

 }

 return 0;
}

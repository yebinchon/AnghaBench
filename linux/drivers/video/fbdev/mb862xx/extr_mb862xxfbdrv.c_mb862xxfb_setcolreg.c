
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mb862xxfb_par {unsigned int* pseudo_palette; } ;
struct TYPE_4__ {int blue; int green; int red; } ;
struct TYPE_3__ {int visual; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct mb862xxfb_par* par; } ;




 int GC_L0PAL0 ;
 unsigned int chan_to_field (unsigned int,int *) ;
 int disp ;
 int outreg (int ,int ,unsigned int) ;

__attribute__((used)) static int mb862xxfb_setcolreg(unsigned regno,
          unsigned red, unsigned green, unsigned blue,
          unsigned transp, struct fb_info *info)
{
 struct mb862xxfb_par *par = info->par;
 unsigned int val;

 switch (info->fix.visual) {
 case 128:
  if (regno < 16) {
   val = chan_to_field(red, &info->var.red);
   val |= chan_to_field(green, &info->var.green);
   val |= chan_to_field(blue, &info->var.blue);
   par->pseudo_palette[regno] = val;
  }
  break;
 case 129:
  if (regno < 256) {
   val = (red >> 8) << 16;
   val |= (green >> 8) << 8;
   val |= blue >> 8;
   outreg(disp, GC_L0PAL0 + (regno * 4), val);
  }
  break;
 default:
  return 1;
 }
 return 0;
}

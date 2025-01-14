
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {unsigned int offset; int length; } ;
struct TYPE_8__ {unsigned int offset; int length; } ;
struct TYPE_7__ {unsigned int offset; int length; } ;
struct TYPE_10__ {TYPE_4__ green; TYPE_3__ blue; TYPE_2__ red; int bits_per_pixel; } ;
struct TYPE_6__ {int visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_5__ var; int par; TYPE_1__ fix; int device; } ;


 int EINVAL ;


 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;
 int i740outb (int ,int ,unsigned int) ;

__attribute__((used)) static int i740fb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 u32 r, g, b;

 dev_dbg(info->device, "setcolreg: regno: %i, red=%d, green=%d, blue=%d, transp=%d, bpp=%d\n",
  regno, red, green, blue, transp, info->var.bits_per_pixel);

 switch (info->fix.visual) {
 case 129:
  if (regno >= 256)
   return -EINVAL;
  i740outb(info->par, VGA_PEL_IW, regno);
  i740outb(info->par, VGA_PEL_D, red >> 8);
  i740outb(info->par, VGA_PEL_D, green >> 8);
  i740outb(info->par, VGA_PEL_D, blue >> 8);
  break;
 case 128:
  if (regno >= 16)
   return -EINVAL;
  r = (red >> (16 - info->var.red.length))
   << info->var.red.offset;
  b = (blue >> (16 - info->var.blue.length))
   << info->var.blue.offset;
  g = (green >> (16 - info->var.green.length))
   << info->var.green.offset;
  ((u32 *) info->pseudo_palette)[regno] = r | g | b;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

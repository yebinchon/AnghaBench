
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ red; } ;
struct TYPE_6__ {unsigned int len; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_2__ var; TYPE_3__ cmap; } ;



__attribute__((used)) static int
dlfb_ops_setcolreg(unsigned regno, unsigned red, unsigned green,
        unsigned blue, unsigned transp, struct fb_info *info)
{
 int err = 0;

 if (regno >= info->cmap.len)
  return 1;

 if (regno < 16) {
  if (info->var.red.offset == 10) {

   ((u32 *) (info->pseudo_palette))[regno] =
       ((red & 0xf800) >> 1) |
       ((green & 0xf800) >> 6) | ((blue & 0xf800) >> 11);
  } else {

   ((u32 *) (info->pseudo_palette))[regno] =
       ((red & 0xf800)) |
       ((green & 0xfc00) >> 5) | ((blue & 0xf800) >> 11);
  }
 }

 return err;
}

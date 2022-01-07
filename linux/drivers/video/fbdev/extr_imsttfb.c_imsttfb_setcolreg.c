
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct imstt_par {int* cmap_regs; int* palette; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int bits_per_pixel; TYPE_1__ green; } ;
struct fb_info {TYPE_2__ var; struct imstt_par* par; } ;


 size_t PADDRW ;
 size_t PDATA ;
 int eieio () ;

__attribute__((used)) static int
imsttfb_setcolreg (u_int regno, u_int red, u_int green, u_int blue,
     u_int transp, struct fb_info *info)
{
 struct imstt_par *par = info->par;
 u_int bpp = info->var.bits_per_pixel;

 if (regno > 255)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;


 if (0 && bpp == 16)
  par->cmap_regs[PADDRW] = regno << 3;
 else
  par->cmap_regs[PADDRW] = regno;
 eieio();

 par->cmap_regs[PDATA] = red; eieio();
 par->cmap_regs[PDATA] = green; eieio();
 par->cmap_regs[PDATA] = blue; eieio();

 if (regno < 16)
  switch (bpp) {
   case 16:
    par->palette[regno] =
     (regno << (info->var.green.length ==
     5 ? 10 : 11)) | (regno << 5) | regno;
    break;
   case 24:
    par->palette[regno] =
     (regno << 16) | (regno << 8) | regno;
    break;
   case 32: {
    int i = (regno << 8) | regno;
    par->palette[regno] = (i << 16) |i;
    break;
   }
  }
 return 0;
}

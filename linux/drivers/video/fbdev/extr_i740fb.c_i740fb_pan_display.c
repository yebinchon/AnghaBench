
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i740fb_par {int* crtc; int ext_start_addr_hi; int ext_start_addr; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; int device; struct i740fb_par* par; } ;


 size_t EXT_START_ADDR ;
 int EXT_START_ADDR_ENABLE ;
 size_t EXT_START_ADDR_HI ;
 size_t VGA_CRTC_START_HI ;
 size_t VGA_CRTC_START_LO ;
 int VGA_CRT_IC ;
 int dev_dbg (int ,char*,int,int,int) ;
 int i740outreg (struct i740fb_par*,int ,size_t,int) ;

__attribute__((used)) static int i740fb_pan_display(struct fb_var_screeninfo *var,
     struct fb_info *info)
{
 struct i740fb_par *par = info->par;
 u32 base = (var->yoffset * info->var.xres_virtual
   + (var->xoffset & ~7)) >> 2;

 dev_dbg(info->device, "pan_display: xoffset: %i yoffset: %i base: %i\n",
  var->xoffset, var->yoffset, base);

 switch (info->var.bits_per_pixel) {
 case 8:
  break;
 case 15:
 case 16:
  base *= 2;
  break;
 case 24:




  base &= 0xFFFFFFFE;
  base *= 3;
  break;
 case 32:
  base *= 4;
  break;
 }

 par->crtc[VGA_CRTC_START_LO] = base & 0x000000FF;
 par->crtc[VGA_CRTC_START_HI] = (base & 0x0000FF00) >> 8;
 par->ext_start_addr_hi = (base & 0x3FC00000) >> 22;
 par->ext_start_addr =
   ((base & 0x003F0000) >> 16) | EXT_START_ADDR_ENABLE;

 i740outreg(par, VGA_CRT_IC, VGA_CRTC_START_LO, base & 0x000000FF);
 i740outreg(par, VGA_CRT_IC, VGA_CRTC_START_HI,
   (base & 0x0000FF00) >> 8);
 i740outreg(par, VGA_CRT_IC, EXT_START_ADDR_HI,
   (base & 0x3FC00000) >> 22);
 i740outreg(par, VGA_CRT_IC, EXT_START_ADDR,
   ((base & 0x003F0000) >> 16) | EXT_START_ADDR_ENABLE);

 return 0;
}

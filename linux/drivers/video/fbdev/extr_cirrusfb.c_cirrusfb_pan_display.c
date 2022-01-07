
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fb_var_screeninfo {int vmode; int xoffset; int yoffset; } ;
struct TYPE_5__ {int bits_per_pixel; } ;
struct TYPE_4__ {int line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; struct cirrusfb_info* par; } ;
struct cirrusfb_info {size_t btype; int regbase; } ;
struct TYPE_6__ {scalar_t__ scrn_start_bit19; } ;


 int CL_AR33 ;
 int CL_CRT1B ;
 int CL_CRT1D ;
 int EINVAL ;
 int FB_VMODE_YWRAP ;
 int VGA_CRTC_START_HI ;
 int VGA_CRTC_START_LO ;
 int cirrusfb_WaitBLT (int ) ;
 TYPE_3__* cirrusfb_board_info ;
 scalar_t__ is_laguna (struct cirrusfb_info*) ;
 int vga_rcrt (int ,int ) ;
 int vga_wattr (int ,int ,unsigned char) ;
 int vga_wcrt (int ,int ,unsigned char) ;

__attribute__((used)) static int cirrusfb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 int xoffset;
 unsigned long base;
 unsigned char tmp, xpix;
 struct cirrusfb_info *cinfo = info->par;



 if (var->vmode & FB_VMODE_YWRAP)
  return -EINVAL;

 xoffset = var->xoffset * info->var.bits_per_pixel / 8;

 base = var->yoffset * info->fix.line_length + xoffset;

 if (info->var.bits_per_pixel == 1) {

  xpix = (unsigned char) (var->xoffset % 8);
 } else {
  base /= 4;
  xpix = (unsigned char) ((xoffset % 4) * 2);
 }

 if (!is_laguna(cinfo))
  cirrusfb_WaitBLT(cinfo->regbase);


 vga_wcrt(cinfo->regbase, VGA_CRTC_START_LO, base & 0xff);
 vga_wcrt(cinfo->regbase, VGA_CRTC_START_HI, (base >> 8) & 0xff);


 tmp = vga_rcrt(cinfo->regbase, CL_CRT1B) & 0xf2;

 if (base & 0x10000)
  tmp |= 0x01;
 if (base & 0x20000)
  tmp |= 0x04;
 if (base & 0x40000)
  tmp |= 0x08;

 vga_wcrt(cinfo->regbase, CL_CRT1B, tmp);


 if (cirrusfb_board_info[cinfo->btype].scrn_start_bit19) {
  tmp = vga_rcrt(cinfo->regbase, CL_CRT1D);
  if (is_laguna(cinfo))
   tmp = (tmp & ~0x18) | ((base >> 16) & 0x18);
  else
   tmp = (tmp & ~0x80) | ((base >> 12) & 0x80);
  vga_wcrt(cinfo->regbase, CL_CRT1D, tmp);
 }





 if (info->var.bits_per_pixel == 1)
  vga_wattr(cinfo->regbase, CL_AR33, xpix);

 return 0;
}

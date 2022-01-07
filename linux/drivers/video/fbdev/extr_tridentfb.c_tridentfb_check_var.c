
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tridentfb_par {int chip_id; scalar_t__ flatpanel; } ;
struct TYPE_4__ {int offset; int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres; int xres_virtual; int yres; int yres_virtual; int pixclock; TYPE_2__ blue; TYPE_2__ green; TYPE_2__ red; } ;
struct TYPE_3__ {int smem_len; } ;
struct fb_info {int flags; TYPE_1__ fix; struct tridentfb_par* par; } ;






 int EINVAL ;
 int FBINFO_HWACCEL_DISABLED ;
 int PICOS2KHZ (int ) ;



 int debug (char*) ;
 int is3Dchip (int) ;
 scalar_t__ is_xp (int) ;
 int nativex ;

__attribute__((used)) static int tridentfb_check_var(struct fb_var_screeninfo *var,
          struct fb_info *info)
{
 struct tridentfb_par *par = info->par;
 int bpp = var->bits_per_pixel;
 int line_length;
 int ramdac = 230000;
 debug("enter\n");


 if (bpp == 24)
  bpp = var->bits_per_pixel = 32;
 if (bpp != 8 && bpp != 16 && bpp != 32)
  return -EINVAL;
 if (par->chip_id == 129 && bpp == 32)
  return -EINVAL;

 if (par->flatpanel && nativex && var->xres > nativex)
  return -EINVAL;

 var->xres = (var->xres + 7) & ~0x7;
 if (var->xres > var->xres_virtual)
  var->xres_virtual = var->xres;
 if (var->yres > var->yres_virtual)
  var->yres_virtual = var->yres;
 if (var->xres_virtual > 4095 || var->yres > 2048)
  return -EINVAL;

 if (var->yres_virtual > 0xffff)
  return -EINVAL;
 line_length = var->xres_virtual * bpp / 8;

 if (!is3Dchip(par->chip_id) &&
     !(info->flags & FBINFO_HWACCEL_DISABLED)) {

  if (line_length <= 512)
   var->xres_virtual = 512 * 8 / bpp;
  else if (line_length <= 1024)
   var->xres_virtual = 1024 * 8 / bpp;
  else if (line_length <= 2048)
   var->xres_virtual = 2048 * 8 / bpp;
  else if (line_length <= 4096)
   var->xres_virtual = 4096 * 8 / bpp;
  else if (line_length <= 8192)
   var->xres_virtual = 8192 * 8 / bpp;
  else
   return -EINVAL;

  line_length = var->xres_virtual * bpp / 8;
 }


 if (line_length * (var->yres_virtual - var->yres) > (4 << 20))
  var->yres_virtual = ((4 << 20) / line_length) + var->yres;

 if (line_length * var->yres_virtual > info->fix.smem_len)
  return -EINVAL;

 switch (bpp) {
 case 8:
  var->red.offset = 0;
  var->red.length = 8;
  var->green = var->red;
  var->blue = var->red;
  break;
 case 16:
  var->red.offset = 11;
  var->green.offset = 5;
  var->blue.offset = 0;
  var->red.length = 5;
  var->green.length = 6;
  var->blue.length = 5;
  break;
 case 32:
  var->red.offset = 16;
  var->green.offset = 8;
  var->blue.offset = 0;
  var->red.length = 8;
  var->green.length = 8;
  var->blue.length = 8;
  break;
 default:
  return -EINVAL;
 }

 if (is_xp(par->chip_id))
  ramdac = 350000;

 switch (par->chip_id) {
 case 129:
  ramdac = (bpp >= 16) ? 45000 : 90000;
  break;
 case 134:
 case 128:
  ramdac = 135000;
  break;
 case 130:
 case 131:
 case 133:
 case 132:
  ramdac = 170000;
  break;
 }


 if (bpp == 32)
  ramdac /= 2;

 if (PICOS2KHZ(var->pixclock) > ramdac)
  return -EINVAL;

 debug("exit\n");

 return 0;

}

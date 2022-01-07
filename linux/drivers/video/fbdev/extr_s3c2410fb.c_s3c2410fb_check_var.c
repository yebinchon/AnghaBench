
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3c2410fb_mach_info {unsigned int num_displays; struct s3c2410fb_display* displays; int default_display; } ;
struct TYPE_4__ {int lcdcon5; int lcdcon1; } ;
struct s3c2410fb_info {TYPE_1__ regs; int dev; } ;
struct s3c2410fb_display {int type; scalar_t__ yres; scalar_t__ xres; scalar_t__ bpp; int lcdcon5; int hsync_len; int vsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int width; int height; } ;
struct TYPE_6__ {int offset; scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ length; scalar_t__ offset; } ;
struct fb_var_screeninfo {scalar_t__ yres; scalar_t__ xres; scalar_t__ bits_per_pixel; scalar_t__ xres_virtual; scalar_t__ yres_virtual; TYPE_3__ blue; TYPE_3__ green; TYPE_3__ red; TYPE_2__ transp; int hsync_len; int vsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int width; int height; } ;
struct fb_info {struct s3c2410fb_info* par; } ;


 int EINVAL ;
 int S3C2410_LCDCON1_TFT ;
 int S3C2410_LCDCON5_FRM565 ;
 struct s3c2410fb_mach_info* dev_get_platdata (int ) ;
 int dprintk (char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static int s3c2410fb_check_var(struct fb_var_screeninfo *var,
          struct fb_info *info)
{
 struct s3c2410fb_info *fbi = info->par;
 struct s3c2410fb_mach_info *mach_info = dev_get_platdata(fbi->dev);
 struct s3c2410fb_display *display = ((void*)0);
 struct s3c2410fb_display *default_display = mach_info->displays +
          mach_info->default_display;
 int type = default_display->type;
 unsigned i;

 dprintk("check_var(var=%p, info=%p)\n", var, info);



 if (var->yres == default_display->yres &&
     var->xres == default_display->xres &&
     var->bits_per_pixel == default_display->bpp)
  display = default_display;
 else
  for (i = 0; i < mach_info->num_displays; i++)
   if (type == mach_info->displays[i].type &&
       var->yres == mach_info->displays[i].yres &&
       var->xres == mach_info->displays[i].xres &&
       var->bits_per_pixel == mach_info->displays[i].bpp) {
    display = mach_info->displays + i;
    break;
   }

 if (!display) {
  dprintk("wrong resolution or depth %dx%d at %d bpp\n",
   var->xres, var->yres, var->bits_per_pixel);
  return -EINVAL;
 }


 var->xres_virtual = display->xres;
 var->yres_virtual = display->yres;
 var->height = display->height;
 var->width = display->width;


 var->pixclock = display->pixclock;
 var->left_margin = display->left_margin;
 var->right_margin = display->right_margin;
 var->upper_margin = display->upper_margin;
 var->lower_margin = display->lower_margin;
 var->vsync_len = display->vsync_len;
 var->hsync_len = display->hsync_len;

 fbi->regs.lcdcon5 = display->lcdcon5;

 fbi->regs.lcdcon1 = display->type;

 var->transp.offset = 0;
 var->transp.length = 0;

 switch (var->bits_per_pixel) {
 case 1:
 case 2:
 case 4:
  var->red.offset = 0;
  var->red.length = var->bits_per_pixel;
  var->green = var->red;
  var->blue = var->red;
  break;
 case 8:
  if (display->type != S3C2410_LCDCON1_TFT) {

   var->red.length = 3;
   var->red.offset = 5;
   var->green.length = 3;
   var->green.offset = 2;
   var->blue.length = 2;
   var->blue.offset = 0;
  } else {
   var->red.offset = 0;
   var->red.length = 8;
   var->green = var->red;
   var->blue = var->red;
  }
  break;
 case 12:

  var->red.length = 4;
  var->red.offset = 8;
  var->green.length = 4;
  var->green.offset = 4;
  var->blue.length = 4;
  var->blue.offset = 0;
  break;

 default:
 case 16:
  if (display->lcdcon5 & S3C2410_LCDCON5_FRM565) {

   var->red.offset = 11;
   var->green.offset = 5;
   var->blue.offset = 0;
   var->red.length = 5;
   var->green.length = 6;
   var->blue.length = 5;
  } else {

   var->red.offset = 11;
   var->green.offset = 6;
   var->blue.offset = 1;
   var->red.length = 5;
   var->green.length = 5;
   var->blue.length = 5;
  }
  break;
 case 32:

  var->red.length = 8;
  var->red.offset = 16;
  var->green.length = 8;
  var->green.offset = 8;
  var->blue.length = 8;
  var->blue.offset = 0;
  break;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_7__ {int length; scalar_t__ msb_right; int offset; } ;
struct TYPE_6__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_5__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;



__attribute__((used)) static void set_color_bitfields(struct fb_var_screeninfo *var)
{
 switch (var->bits_per_pixel) {
 case 8:
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 0;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 16:
  var->green.length = (var->green.length == 5) ? 5 : 6;
  var->red.length = 5;
  var->blue.length = 5;
  var->transp.length = 6 - var->green.length;
  var->blue.offset = 0;
  var->green.offset = 5;
  var->red.offset = 5 + var->green.length;
  var->transp.offset = (5 + var->red.offset) & 15;
  break;
 case 24:
 case 32:
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.length = var->bits_per_pixel - 24;
  var->transp.offset = (var->transp.length) ? 24 : 0;
  break;
 }
 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;
}

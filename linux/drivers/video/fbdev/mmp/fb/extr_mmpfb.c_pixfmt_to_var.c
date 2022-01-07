
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_6__ {int offset; int length; } ;
struct TYPE_5__ {int offset; int length; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
__attribute__((used)) static void pixfmt_to_var(struct fb_var_screeninfo *var, int pix_fmt)
{
 switch (pix_fmt) {
 case 138:
  var->bits_per_pixel = 16;
  var->red.offset = 11; var->red.length = 5;
  var->green.offset = 5; var->green.length = 6;
  var->blue.offset = 0; var->blue.length = 5;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 143:
  var->bits_per_pixel = 16;
  var->red.offset = 0; var->red.length = 5;
  var->green.offset = 5; var->green.length = 6;
  var->blue.offset = 11; var->blue.length = 5;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 136:
  var->bits_per_pixel = 32;
  var->red.offset = 16; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 141:
  var->bits_per_pixel = 32;
  var->red.offset = 0; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 16; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 135:
  var->bits_per_pixel = 32;
  var->red.offset = 16; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 24; var->transp.length = 8;
  break;
 case 140:
  var->bits_per_pixel = 32;
  var->red.offset = 0; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 16; var->blue.length = 8;
  var->transp.offset = 24; var->transp.length = 8;
  break;
 case 137:
  var->bits_per_pixel = 24;
  var->red.offset = 16; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 142:
  var->bits_per_pixel = 24;
  var->red.offset = 0; var->red.length = 8;
  var->green.offset = 8; var->green.length = 8;
  var->blue.offset = 16; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 132:
  var->bits_per_pixel = 12;
  var->red.offset = 4; var->red.length = 8;
  var->green.offset = 2; var->green.length = 2;
  var->blue.offset = 0; var->blue.length = 2;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 129:
  var->bits_per_pixel = 12;
  var->red.offset = 4; var->red.length = 8;
  var->green.offset = 0; var->green.length = 2;
  var->blue.offset = 2; var->blue.length = 2;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 131:
  var->bits_per_pixel = 16;
  var->red.offset = 8; var->red.length = 8;
  var->green.offset = 4; var->green.length = 4;
  var->blue.offset = 0; var->blue.length = 4;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 128:
  var->bits_per_pixel = 16;
  var->red.offset = 8; var->red.length = 8;
  var->green.offset = 0; var->green.length = 4;
  var->blue.offset = 4; var->blue.length = 4;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 134:
  var->bits_per_pixel = 16;
  var->red.offset = 8; var->red.length = 16;
  var->green.offset = 4; var->green.length = 16;
  var->blue.offset = 0; var->blue.length = 16;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 133:
  var->bits_per_pixel = 16;
  var->red.offset = 8; var->red.length = 16;
  var->green.offset = 0; var->green.length = 16;
  var->blue.offset = 4; var->blue.length = 16;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 130:
  var->bits_per_pixel = 16;
  var->red.offset = 0; var->red.length = 16;
  var->green.offset = 4; var->green.length = 16;
  var->blue.offset = 8; var->blue.length = 16;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 case 139:
  var->bits_per_pixel = 8;
  var->red.offset = 0; var->red.length = 8;
  var->green.offset = 0; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 0;
  break;
 }
}

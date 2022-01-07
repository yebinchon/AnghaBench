
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int offset; int length; } ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_7__ {int offset; int length; } ;
struct TYPE_10__ {int bits_per_pixel; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; } ;
struct TYPE_6__ {int line_length; int visual; } ;
struct fb_info {TYPE_5__ var; TYPE_1__ fix; } ;


 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int write_cr (int,int) ;
 int write_xr (int,int) ;

__attribute__((used)) static int chipsfb_set_par(struct fb_info *info)
{
 if (info->var.bits_per_pixel == 16) {
  write_cr(0x13, 200);
  write_xr(0x81, 0x14);
  write_xr(0x82, 0x00);
  write_xr(0x20, 0x10);

  info->fix.line_length = 800*2;
  info->fix.visual = FB_VISUAL_TRUECOLOR;

  info->var.red.offset = 10;
  info->var.green.offset = 5;
  info->var.blue.offset = 0;
  info->var.red.length = info->var.green.length =
   info->var.blue.length = 5;

 } else {

  write_cr(0x13, 100);
  write_xr(0x81, 0x12);
  write_xr(0x82, 0x08);
  write_xr(0x20, 0x00);

  info->fix.line_length = 800;
  info->fix.visual = FB_VISUAL_PSEUDOCOLOR;

   info->var.red.offset = info->var.green.offset =
   info->var.blue.offset = 0;
  info->var.red.length = info->var.green.length =
   info->var.blue.length = 8;

 }
 return 0;
}

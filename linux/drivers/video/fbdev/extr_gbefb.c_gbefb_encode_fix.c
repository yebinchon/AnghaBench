
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgi_gbe {int dummy; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres_virtual; } ;
struct fb_fix_screeninfo {unsigned long smem_start; int line_length; int mmio_len; int mmio_start; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ ywrapstep; int visual; int accel; scalar_t__ type_aux; int type; int smem_len; int id; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int GBE_BASE ;
 scalar_t__ gbe_mem ;
 int gbe_mem_size ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gbefb_encode_fix(struct fb_fix_screeninfo *fix,
        struct fb_var_screeninfo *var)
{
 memset(fix, 0, sizeof(struct fb_fix_screeninfo));
 strcpy(fix->id, "SGI GBE");
 fix->smem_start = (unsigned long) gbe_mem;
 fix->smem_len = gbe_mem_size;
 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->type_aux = 0;
 fix->accel = FB_ACCEL_NONE;
 switch (var->bits_per_pixel) {
 case 8:
  fix->visual = FB_VISUAL_PSEUDOCOLOR;
  break;
 default:
  fix->visual = FB_VISUAL_TRUECOLOR;
  break;
 }
 fix->ywrapstep = 0;
 fix->xpanstep = 0;
 fix->ypanstep = 0;
 fix->line_length = var->xres_virtual * var->bits_per_pixel / 8;
 fix->mmio_start = GBE_BASE;
 fix->mmio_len = sizeof(struct sgi_gbe);
}

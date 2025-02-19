
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct via_display_timing {int dummy; } ;
struct fb_var_screeninfo {int bits_per_pixel; int pixclock; scalar_t__ yres; scalar_t__ xres; } ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {scalar_t__ gfx_chip_name; } ;


 int IGA1 ;
 int IGA2 ;
 int PICOS2KHZ (int ) ;
 scalar_t__ UNICHROME_CLE266 ;
 scalar_t__ UNICHROME_K400 ;
 struct via_display_timing var_to_timing (struct fb_var_screeninfo const*,scalar_t__,scalar_t__) ;
 int via_set_primary_timing (struct via_display_timing*) ;
 int via_set_secondary_timing (struct via_display_timing*) ;
 int viafb_load_FIFO_reg (int,scalar_t__,scalar_t__) ;
 int viafb_load_fetch_count_reg (scalar_t__,int,int) ;
 int viafb_set_vclock (int,int) ;
 TYPE_2__* viaparinfo ;

void viafb_fill_crtc_timing(const struct fb_var_screeninfo *var,
 u16 cxres, u16 cyres, int iga)
{
 struct via_display_timing crt_reg = var_to_timing(var,
  cxres ? cxres : var->xres, cyres ? cyres : var->yres);

 if (iga == IGA1)
  via_set_primary_timing(&crt_reg);
 else if (iga == IGA2)
  via_set_secondary_timing(&crt_reg);

 viafb_load_fetch_count_reg(var->xres, var->bits_per_pixel / 8, iga);
 if (viaparinfo->chip_info->gfx_chip_name != UNICHROME_CLE266
  && viaparinfo->chip_info->gfx_chip_name != UNICHROME_K400)
  viafb_load_FIFO_reg(iga, var->xres, var->yres);

 viafb_set_vclock(PICOS2KHZ(var->pixclock) * 1000, iga);
}

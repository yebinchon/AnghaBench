
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
typedef int s32 ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG () ;
 int DSSDBG (char*,unsigned int,unsigned int) ;




 int OMAP_DSS_COLOR_UYVY ;
 int OMAP_DSS_COLOR_YUV2 ;
 int color_mode_to_bpp (int) ;
 int pixinc (int,unsigned int) ;

__attribute__((used)) static void calc_tiler_rotation_offset(u16 screen_width, u16 width,
  enum omap_color_mode color_mode, bool fieldmode,
  unsigned int field_offset, unsigned *offset0, unsigned *offset1,
  s32 *row_inc, s32 *pix_inc, int x_predecim, int y_predecim)
{
 u8 ps;

 switch (color_mode) {
 case 131:
 case 130:
 case 129:
 case 128:
  BUG();
  return;
 default:
  ps = color_mode_to_bpp(color_mode) / 8;
  break;
 }

 DSSDBG("scrw %d, width %d\n", screen_width, width);





 *offset1 = 0;
 if (field_offset)
  *offset0 = *offset1 + field_offset * screen_width * ps;
 else
  *offset0 = *offset1;
 *row_inc = pixinc(1 + (y_predecim * screen_width - width * x_predecim) +
   (fieldmode ? screen_width : 0), ps);
 if (color_mode == OMAP_DSS_COLOR_YUV2 ||
  color_mode == OMAP_DSS_COLOR_UYVY)
  *pix_inc = pixinc(x_predecim, 2 * ps);
 else
  *pix_inc = pixinc(x_predecim, ps);
}

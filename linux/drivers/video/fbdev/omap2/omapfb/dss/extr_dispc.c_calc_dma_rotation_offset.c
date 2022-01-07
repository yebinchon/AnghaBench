
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
typedef int s32 ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG () ;
 int DSSDBG (char*,int,unsigned int,unsigned int,unsigned int) ;




 int OMAP_DSS_COLOR_UYVY ;
 int OMAP_DSS_COLOR_YUV2 ;




 int color_mode_to_bpp (int) ;
 int pixinc (int,int) ;

__attribute__((used)) static void calc_dma_rotation_offset(u8 rotation, bool mirror,
  u16 screen_width,
  u16 width, u16 height,
  enum omap_color_mode color_mode, bool fieldmode,
  unsigned int field_offset,
  unsigned *offset0, unsigned *offset1,
  s32 *row_inc, s32 *pix_inc, int x_predecim, int y_predecim)
{
 u8 ps;
 u16 fbw, fbh;


 switch (color_mode) {
 case 135:
 case 134:
 case 133:
 case 132:
  BUG();
  return;
 default:
  ps = color_mode_to_bpp(color_mode) / 8;
  break;
 }

 DSSDBG("calc_rot(%d): scrw %d, %dx%d\n", rotation, screen_width,
   width, height);



 if (rotation == 131 || rotation == 130) {
  fbw = width;
  fbh = height;
 } else {
  fbw = height;
  fbh = width;
 }





 switch (rotation + mirror * 4) {
 case 131:
  *offset1 = 0;
  if (field_offset)
   *offset0 = *offset1 + field_offset * screen_width * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(1 +
   (y_predecim * screen_width - fbw * x_predecim) +
   (fieldmode ? screen_width : 0), ps);
  if (color_mode == OMAP_DSS_COLOR_YUV2 ||
   color_mode == OMAP_DSS_COLOR_UYVY)
   *pix_inc = pixinc(x_predecim, 2 * ps);
  else
   *pix_inc = pixinc(x_predecim, ps);
  break;
 case 128:
  *offset1 = screen_width * (fbh - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 + field_offset * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(screen_width * (fbh * x_predecim - 1) +
    y_predecim + (fieldmode ? 1 : 0), ps);
  *pix_inc = pixinc(-x_predecim * screen_width, ps);
  break;
 case 130:
  *offset1 = (screen_width * (fbh - 1) + fbw - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 - field_offset * screen_width * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(-1 -
   (y_predecim * screen_width - fbw * x_predecim) -
   (fieldmode ? screen_width : 0), ps);
  if (color_mode == OMAP_DSS_COLOR_YUV2 ||
   color_mode == OMAP_DSS_COLOR_UYVY)
   *pix_inc = pixinc(-x_predecim, 2 * ps);
  else
   *pix_inc = pixinc(-x_predecim, ps);
  break;
 case 129:
  *offset1 = (fbw - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 - field_offset * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(-screen_width * (fbh * x_predecim - 1) -
    y_predecim - (fieldmode ? 1 : 0), ps);
  *pix_inc = pixinc(x_predecim * screen_width, ps);
  break;


 case 131 + 4:
  *offset1 = (fbw - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 + field_offset * screen_width * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(y_predecim * screen_width * 2 - 1 +
    (fieldmode ? screen_width : 0),
    ps);
  if (color_mode == OMAP_DSS_COLOR_YUV2 ||
   color_mode == OMAP_DSS_COLOR_UYVY)
   *pix_inc = pixinc(-x_predecim, 2 * ps);
  else
   *pix_inc = pixinc(-x_predecim, ps);
  break;

 case 128 + 4:
  *offset1 = 0;
  if (field_offset)
   *offset0 = *offset1 + field_offset * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(-screen_width * (fbh * x_predecim - 1) +
    y_predecim + (fieldmode ? 1 : 0),
    ps);
  *pix_inc = pixinc(x_predecim * screen_width, ps);
  break;

 case 130 + 4:
  *offset1 = screen_width * (fbh - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 - field_offset * screen_width * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(1 - y_predecim * screen_width * 2 -
    (fieldmode ? screen_width : 0),
    ps);
  if (color_mode == OMAP_DSS_COLOR_YUV2 ||
   color_mode == OMAP_DSS_COLOR_UYVY)
   *pix_inc = pixinc(x_predecim, 2 * ps);
  else
   *pix_inc = pixinc(x_predecim, ps);
  break;

 case 129 + 4:
  *offset1 = (screen_width * (fbh - 1) + fbw - 1) * ps;
  if (field_offset)
   *offset0 = *offset1 - field_offset * ps;
  else
   *offset0 = *offset1;
  *row_inc = pixinc(screen_width * (fbh * x_predecim - 1) -
    y_predecim - (fieldmode ? 1 : 0),
    ps);
  *pix_inc = pixinc(-x_predecim * screen_width, ps);
  break;

 default:
  BUG();
  return;
 }
}

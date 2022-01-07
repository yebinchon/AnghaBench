
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s32 ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG () ;
 int DSSDBG (char*,int,int,int,int) ;
 int color_mode_to_bpp (int) ;
 int pixinc (int,int) ;

__attribute__((used)) static void calc_vrfb_rotation_offset(u8 rotation, bool mirror,
  u16 screen_width,
  u16 width, u16 height,
  enum omap_color_mode color_mode, bool fieldmode,
  unsigned int field_offset,
  unsigned *offset0, unsigned *offset1,
  s32 *row_inc, s32 *pix_inc, int x_predecim, int y_predecim)
{
 u8 ps;


 switch (color_mode) {
 case 137:
 case 136:
 case 135:
 case 134:
  BUG();
  return;
 case 132:
 case 133:
  ps = 4;
  break;
 default:
  ps = color_mode_to_bpp(color_mode) / 8;
  break;
 }

 DSSDBG("calc_rot(%d): scrw %d, %dx%d\n", rotation, screen_width,
   width, height);





 switch (rotation + mirror * 4) {
 case 131:
 case 130:




  if (color_mode == 132 ||
   color_mode == 133)
   width = width >> 1;

 case 128:
 case 129:
  *offset1 = 0;
  if (field_offset)
   *offset0 = field_offset * screen_width * ps;
  else
   *offset0 = 0;

  *row_inc = pixinc(1 +
   (y_predecim * screen_width - x_predecim * width) +
   (fieldmode ? screen_width : 0), ps);
  *pix_inc = pixinc(x_predecim, ps);
  break;

 case 131 + 4:
 case 130 + 4:



  if (color_mode == 132 ||
   color_mode == 133)
   width = width >> 1;

 case 128 + 4:
 case 129 + 4:
  *offset1 = 0;
  if (field_offset)
   *offset0 = field_offset * screen_width * ps;
  else
   *offset0 = 0;
  *row_inc = pixinc(1 -
   (y_predecim * screen_width + x_predecim * width) -
   (fieldmode ? screen_width : 0), ps);
  *pix_inc = pixinc(x_predecim, ps);
  break;

 default:
  BUG();
  return;
 }
}

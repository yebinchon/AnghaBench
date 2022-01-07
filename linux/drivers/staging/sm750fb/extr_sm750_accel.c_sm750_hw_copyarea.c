
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynx_accel {scalar_t__ (* de_wait ) () ;} ;


 unsigned int BOTTOM_TO_TOP ;
 int DE_CONTROL ;
 unsigned int DE_CONTROL_COMMAND_BITBLT ;
 unsigned int DE_CONTROL_DIRECTION ;
 unsigned int DE_CONTROL_ROP_MASK ;
 unsigned int DE_CONTROL_ROP_SELECT ;
 unsigned int DE_CONTROL_STATUS ;
 int DE_DESTINATION ;
 unsigned int DE_DESTINATION_X_MASK ;
 unsigned int DE_DESTINATION_X_SHIFT ;
 unsigned int DE_DESTINATION_Y_MASK ;
 int DE_DIMENSION ;
 unsigned int DE_DIMENSION_X_MASK ;
 unsigned int DE_DIMENSION_X_SHIFT ;
 unsigned int DE_DIMENSION_Y_ET_MASK ;
 int DE_PITCH ;
 unsigned int DE_PITCH_DESTINATION_MASK ;
 unsigned int DE_PITCH_DESTINATION_SHIFT ;
 unsigned int DE_PITCH_SOURCE_MASK ;
 int DE_SOURCE ;
 unsigned int DE_SOURCE_X_K1_MASK ;
 unsigned int DE_SOURCE_X_K1_SHIFT ;
 unsigned int DE_SOURCE_Y_K2_MASK ;
 int DE_WINDOW_DESTINATION_BASE ;
 int DE_WINDOW_SOURCE_BASE ;
 int DE_WINDOW_WIDTH ;
 unsigned int DE_WINDOW_WIDTH_DST_MASK ;
 unsigned int DE_WINDOW_WIDTH_DST_SHIFT ;
 unsigned int DE_WINDOW_WIDTH_SRC_MASK ;
 unsigned int LEFT_TO_RIGHT ;
 unsigned int RIGHT_TO_LEFT ;
 unsigned int TOP_TO_BOTTOM ;
 scalar_t__ stub1 () ;
 int write_dpr (struct lynx_accel*,int ,unsigned int) ;

int sm750_hw_copyarea(
struct lynx_accel *accel,
unsigned int sBase,
unsigned int sPitch,
unsigned int sx,
unsigned int sy,
unsigned int dBase,
unsigned int dPitch,
unsigned int Bpp,
unsigned int dx,
unsigned int dy,
unsigned int width,
unsigned int height,
unsigned int rop2)
{
 unsigned int nDirection, de_ctrl;

 nDirection = LEFT_TO_RIGHT;

 de_ctrl = 0;


 if (sBase == dBase && sPitch == dPitch) {

  if (sy < dy) {
   nDirection = BOTTOM_TO_TOP;
  } else if (sy > dy) {
   nDirection = TOP_TO_BOTTOM;
  } else {


   if (sx <= dx) {
    nDirection = RIGHT_TO_LEFT;
   } else {
    nDirection = LEFT_TO_RIGHT;
   }
  }
 }

 if ((nDirection == BOTTOM_TO_TOP) || (nDirection == RIGHT_TO_LEFT)) {
  sx += width - 1;
  sy += height - 1;
  dx += width - 1;
  dy += height - 1;
 }
 write_dpr(accel, DE_WINDOW_SOURCE_BASE, sBase);






 write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase);






 write_dpr(accel, DE_PITCH,
    ((dPitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
     DE_PITCH_DESTINATION_MASK) |
    (sPitch / Bpp & DE_PITCH_SOURCE_MASK));






 write_dpr(accel, DE_WINDOW_WIDTH,
    ((dPitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
     DE_WINDOW_WIDTH_DST_MASK) |
    (sPitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK));

 if (accel->de_wait() != 0)
  return -1;

 write_dpr(accel, DE_SOURCE,
    ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
    (sy & DE_SOURCE_Y_K2_MASK));
 write_dpr(accel, DE_DESTINATION,
    ((dx << DE_DESTINATION_X_SHIFT) & DE_DESTINATION_X_MASK) |
    (dy & DE_DESTINATION_Y_MASK));
 write_dpr(accel, DE_DIMENSION,
    ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
    (height & DE_DIMENSION_Y_ET_MASK));

 de_ctrl = (rop2 & DE_CONTROL_ROP_MASK) | DE_CONTROL_ROP_SELECT |
  ((nDirection == RIGHT_TO_LEFT) ? DE_CONTROL_DIRECTION : 0) |
  DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 write_dpr(accel, DE_CONTROL, de_ctrl);

 return 0;
}

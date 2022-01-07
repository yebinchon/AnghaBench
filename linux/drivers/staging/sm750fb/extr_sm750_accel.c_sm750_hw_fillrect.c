
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {scalar_t__ (* de_wait ) () ;} ;


 int DE_CONTROL ;
 int DE_CONTROL_COMMAND_RECTANGLE_FILL ;
 int DE_CONTROL_LAST_PIXEL ;
 int DE_CONTROL_ROP_MASK ;
 int DE_CONTROL_ROP_SELECT ;
 int DE_CONTROL_STATUS ;
 int DE_DESTINATION ;
 int DE_DESTINATION_X_MASK ;
 int DE_DESTINATION_X_SHIFT ;
 int DE_DESTINATION_Y_MASK ;
 int DE_DIMENSION ;
 int DE_DIMENSION_X_MASK ;
 int DE_DIMENSION_X_SHIFT ;
 int DE_DIMENSION_Y_ET_MASK ;
 int DE_FOREGROUND ;
 int DE_PITCH ;
 int DE_PITCH_DESTINATION_MASK ;
 int DE_PITCH_DESTINATION_SHIFT ;
 int DE_PITCH_SOURCE_MASK ;
 int DE_WINDOW_DESTINATION_BASE ;
 int DE_WINDOW_WIDTH ;
 int DE_WINDOW_WIDTH_DST_MASK ;
 int DE_WINDOW_WIDTH_DST_SHIFT ;
 int DE_WINDOW_WIDTH_SRC_MASK ;
 int pr_debug (char*) ;
 scalar_t__ stub1 () ;
 int write_dpr (struct lynx_accel*,int ,int) ;

int sm750_hw_fillrect(struct lynx_accel *accel,
        u32 base, u32 pitch, u32 Bpp,
        u32 x, u32 y, u32 width, u32 height,
        u32 color, u32 rop)
{
 u32 deCtrl;

 if (accel->de_wait() != 0) {




  pr_debug("De engine always busy\n");
  return -1;
 }

 write_dpr(accel, DE_WINDOW_DESTINATION_BASE, base);
 write_dpr(accel, DE_PITCH,
    ((pitch / Bpp << DE_PITCH_DESTINATION_SHIFT) &
     DE_PITCH_DESTINATION_MASK) |
    (pitch / Bpp & DE_PITCH_SOURCE_MASK));

 write_dpr(accel, DE_WINDOW_WIDTH,
    ((pitch / Bpp << DE_WINDOW_WIDTH_DST_SHIFT) &
     DE_WINDOW_WIDTH_DST_MASK) |
     (pitch / Bpp & DE_WINDOW_WIDTH_SRC_MASK));

 write_dpr(accel, DE_FOREGROUND, color);

 write_dpr(accel, DE_DESTINATION,
    ((x << DE_DESTINATION_X_SHIFT) & DE_DESTINATION_X_MASK) |
    (y & DE_DESTINATION_Y_MASK));

 write_dpr(accel, DE_DIMENSION,
    ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
    (height & DE_DIMENSION_Y_ET_MASK));

 deCtrl = DE_CONTROL_STATUS | DE_CONTROL_LAST_PIXEL |
  DE_CONTROL_COMMAND_RECTANGLE_FILL | DE_CONTROL_ROP_SELECT |
  (rop & DE_CONTROL_ROP_MASK);

 write_dpr(accel, DE_CONTROL, deCtrl);
 return 0;
}

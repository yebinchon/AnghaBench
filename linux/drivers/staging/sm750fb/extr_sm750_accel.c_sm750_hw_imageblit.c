
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {scalar_t__ (* de_wait ) () ;} ;


 int DE_BACKGROUND ;
 int DE_CONTROL ;
 int DE_CONTROL_COMMAND_HOST_WRITE ;
 int DE_CONTROL_HOST ;
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
 int DE_SOURCE ;
 int DE_SOURCE_X_K1_MONO_MASK ;
 int DE_SOURCE_X_K1_SHIFT ;
 int DE_WINDOW_DESTINATION_BASE ;
 int DE_WINDOW_SOURCE_BASE ;
 int DE_WINDOW_WIDTH ;
 int DE_WINDOW_WIDTH_DST_MASK ;
 int DE_WINDOW_WIDTH_DST_SHIFT ;
 int DE_WINDOW_WIDTH_SRC_MASK ;
 unsigned int deGetTransparency (struct lynx_accel*) ;
 int memcpy (unsigned char*,char const*,unsigned int) ;
 scalar_t__ stub1 () ;
 int write_dpPort (struct lynx_accel*,unsigned int) ;
 int write_dpr (struct lynx_accel*,int ,unsigned int) ;

int sm750_hw_imageblit(struct lynx_accel *accel,
   const char *pSrcbuf,
   u32 srcDelta,
   u32 startBit,
   u32 dBase,
   u32 dPitch,
   u32 bytePerPixel,
   u32 dx,
   u32 dy,
   u32 width,
   u32 height,
   u32 fColor,
   u32 bColor,
   u32 rop2)
{
 unsigned int ulBytesPerScan;
 unsigned int ul4BytesPerScan;
 unsigned int ulBytesRemain;
 unsigned int de_ctrl = 0;
 unsigned char ajRemain[4];
 int i, j;

 startBit &= 7;
 ulBytesPerScan = (width + startBit + 7) / 8;
 ul4BytesPerScan = ulBytesPerScan & ~3;
 ulBytesRemain = ulBytesPerScan & 3;

 if (accel->de_wait() != 0)
  return -1;





 write_dpr(accel, DE_WINDOW_SOURCE_BASE, 0);





 write_dpr(accel, DE_WINDOW_DESTINATION_BASE, dBase);






 write_dpr(accel, DE_PITCH,
    ((dPitch / bytePerPixel << DE_PITCH_DESTINATION_SHIFT) &
     DE_PITCH_DESTINATION_MASK) |
    (dPitch / bytePerPixel & DE_PITCH_SOURCE_MASK));






 write_dpr(accel, DE_WINDOW_WIDTH,
    ((dPitch / bytePerPixel << DE_WINDOW_WIDTH_DST_SHIFT) &
     DE_WINDOW_WIDTH_DST_MASK) |
    (dPitch / bytePerPixel & DE_WINDOW_WIDTH_SRC_MASK));






 write_dpr(accel, DE_SOURCE,
    (startBit << DE_SOURCE_X_K1_SHIFT) &
    DE_SOURCE_X_K1_MONO_MASK);

 write_dpr(accel, DE_DESTINATION,
    ((dx << DE_DESTINATION_X_SHIFT) & DE_DESTINATION_X_MASK) |
    (dy & DE_DESTINATION_Y_MASK));

 write_dpr(accel, DE_DIMENSION,
    ((width << DE_DIMENSION_X_SHIFT) & DE_DIMENSION_X_MASK) |
    (height & DE_DIMENSION_Y_ET_MASK));

 write_dpr(accel, DE_FOREGROUND, fColor);
 write_dpr(accel, DE_BACKGROUND, bColor);

 de_ctrl = (rop2 & DE_CONTROL_ROP_MASK) |
  DE_CONTROL_ROP_SELECT | DE_CONTROL_COMMAND_HOST_WRITE |
  DE_CONTROL_HOST | DE_CONTROL_STATUS;

 write_dpr(accel, DE_CONTROL, de_ctrl | deGetTransparency(accel));


 for (i = 0; i < height; i++) {

  for (j = 0; j < (ul4BytesPerScan / 4); j++)
   write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));

  if (ulBytesRemain) {
   memcpy(ajRemain, pSrcbuf + ul4BytesPerScan,
          ulBytesRemain);
   write_dpPort(accel, *(unsigned int *)ajRemain);
  }

  pSrcbuf += srcDelta;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct meson_canvas {int lock; int dev; int * used; int supports_endianness; } ;


 unsigned int CANVAS_BLKMODE_BIT ;
 unsigned int CANVAS_ENDIAN_BIT ;
 int CANVAS_HEIGHT_BIT ;
 size_t CANVAS_LUT_WR_EN ;
 int CANVAS_WIDTH_HBIT ;
 int CANVAS_WIDTH_LBIT ;
 int CANVAS_WIDTH_LWID ;
 unsigned int CANVAS_WRAP_BIT ;
 int DMC_CAV_LUT_ADDR ;
 int DMC_CAV_LUT_DATAH ;
 int DMC_CAV_LUT_DATAL ;
 int EINVAL ;
 int canvas_read (struct meson_canvas*,int ) ;
 int canvas_write (struct meson_canvas*,int ,size_t) ;
 int dev_err (int ,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int meson_canvas_config(struct meson_canvas *canvas, u8 canvas_index,
   u32 addr, u32 stride, u32 height,
   unsigned int wrap,
   unsigned int blkmode,
   unsigned int endian)
{
 unsigned long flags;

 if (endian && !canvas->supports_endianness) {
  dev_err(canvas->dev,
   "Endianness is not supported on this SoC\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&canvas->lock, flags);
 if (!canvas->used[canvas_index]) {
  dev_err(canvas->dev,
   "Trying to setup non allocated canvas %u\n",
   canvas_index);
  spin_unlock_irqrestore(&canvas->lock, flags);
  return -EINVAL;
 }

 canvas_write(canvas, DMC_CAV_LUT_DATAL,
       ((addr + 7) >> 3) |
       (((stride + 7) >> 3) << CANVAS_WIDTH_LBIT));

 canvas_write(canvas, DMC_CAV_LUT_DATAH,
       ((((stride + 7) >> 3) >> CANVAS_WIDTH_LWID) <<
      CANVAS_WIDTH_HBIT) |
       (height << CANVAS_HEIGHT_BIT) |
       (wrap << CANVAS_WRAP_BIT) |
       (blkmode << CANVAS_BLKMODE_BIT) |
       (endian << CANVAS_ENDIAN_BIT));

 canvas_write(canvas, DMC_CAV_LUT_ADDR,
       CANVAS_LUT_WR_EN | canvas_index);


 canvas_read(canvas, DMC_CAV_LUT_DATAH);
 spin_unlock_irqrestore(&canvas->lock, flags);

 return 0;
}

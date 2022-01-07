
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct meson_canvas {int lock; scalar_t__* used; int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int meson_canvas_free(struct meson_canvas *canvas, u8 canvas_index)
{
 unsigned long flags;

 spin_lock_irqsave(&canvas->lock, flags);
 if (!canvas->used[canvas_index]) {
  dev_err(canvas->dev,
   "Trying to free unused canvas %u\n", canvas_index);
  spin_unlock_irqrestore(&canvas->lock, flags);
  return -EINVAL;
 }
 canvas->used[canvas_index] = 0;
 spin_unlock_irqrestore(&canvas->lock, flags);

 return 0;
}

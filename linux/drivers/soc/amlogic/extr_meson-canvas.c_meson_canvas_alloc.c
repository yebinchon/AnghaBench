
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct meson_canvas {int* used; int dev; int lock; } ;


 int ENODEV ;
 int NUM_CANVAS ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int meson_canvas_alloc(struct meson_canvas *canvas, u8 *canvas_index)
{
 int i;
 unsigned long flags;

 spin_lock_irqsave(&canvas->lock, flags);
 for (i = 0; i < NUM_CANVAS; ++i) {
  if (!canvas->used[i]) {
   canvas->used[i] = 1;
   spin_unlock_irqrestore(&canvas->lock, flags);
   *canvas_index = i;
   return 0;
  }
 }
 spin_unlock_irqrestore(&canvas->lock, flags);

 dev_err(canvas->dev, "No more canvas available\n");
 return -ENODEV;
}

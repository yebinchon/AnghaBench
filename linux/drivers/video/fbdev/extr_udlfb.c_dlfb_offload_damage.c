
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlfb_data {int damage_work; int damage_lock; void* damage_y2; void* damage_y; void* damage_x2; void* damage_x; } ;


 void* max (int,void*) ;
 void* min (int,void*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dlfb_offload_damage(struct dlfb_data *dlfb, int x, int y, int width, int height)
{
 unsigned long flags;
 int x2 = x + width;
 int y2 = y + height;

 if (x >= x2 || y >= y2)
  return;

 spin_lock_irqsave(&dlfb->damage_lock, flags);
 dlfb->damage_x = min(x, dlfb->damage_x);
 dlfb->damage_x2 = max(x2, dlfb->damage_x2);
 dlfb->damage_y = min(y, dlfb->damage_y);
 dlfb->damage_y2 = max(y2, dlfb->damage_y2);
 spin_unlock_irqrestore(&dlfb->damage_lock, flags);

 schedule_work(&dlfb->damage_work);
}

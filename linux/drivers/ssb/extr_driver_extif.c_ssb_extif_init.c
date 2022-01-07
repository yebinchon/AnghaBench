
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_extif {int gpio_lock; int dev; } ;


 int spin_lock_init (int *) ;

void ssb_extif_init(struct ssb_extif *extif)
{
 if (!extif->dev)
  return;
 spin_lock_init(&extif->gpio_lock);
}

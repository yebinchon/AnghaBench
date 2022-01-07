
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vme_lm_resource {int monitors; int mtx; TYPE_1__* parent; } ;
struct fake_driver {scalar_t__ lm_enabled; int ** lm_callback; int ** lm_data; } ;
struct TYPE_2__ {struct fake_driver* driver_priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fake_lm_detach(struct vme_lm_resource *lm, int monitor)
{
 u32 tmp;
 int i;
 struct fake_driver *bridge;

 bridge = lm->parent->driver_priv;

 mutex_lock(&lm->mtx);


 bridge->lm_callback[monitor] = ((void*)0);
 bridge->lm_data[monitor] = ((void*)0);


 tmp = 0;
 for (i = 0; i < lm->monitors; i++) {
  if (bridge->lm_callback[i])
   tmp = 1;
 }

 if (tmp == 0)
  bridge->lm_enabled = 0;

 mutex_unlock(&lm->mtx);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_pool {int name; int list; int region_inst; scalar_t__ num_desc; TYPE_1__* region; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int used_desc; } ;


 int devm_kfree (int ,struct knav_pool*) ;
 int kdesc_empty_pool (struct knav_pool*) ;
 TYPE_2__* kdev ;
 int kfree (int ) ;
 int knav_dev_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void knav_pool_destroy(void *ph)
{
 struct knav_pool *pool = ph;

 if (!pool)
  return;

 if (!pool->region)
  return;

 kdesc_empty_pool(pool);
 mutex_lock(&knav_dev_lock);

 pool->region->used_desc -= pool->num_desc;
 list_del(&pool->region_inst);
 list_del(&pool->list);

 mutex_unlock(&knav_dev_lock);
 kfree(pool->name);
 devm_kfree(kdev->dev, pool);
}

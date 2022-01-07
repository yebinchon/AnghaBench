
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_pool {int queue; } ;


 int knav_queue_get_count (int ) ;

int knav_pool_count(void *ph)
{
 struct knav_pool *pool = ph;
 return knav_queue_get_count(pool->queue);
}

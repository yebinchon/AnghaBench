
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {int clk_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clock_stop ) (struct soc_camera_host*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct soc_camera_host*) ;

__attribute__((used)) static void soc_camera_clock_stop(struct soc_camera_host *ici)
{
 if (!ici->ops->clock_stop)
  return;

 mutex_lock(&ici->clk_lock);
 ici->ops->clock_stop(ici);
 mutex_unlock(&ici->clk_lock);
}

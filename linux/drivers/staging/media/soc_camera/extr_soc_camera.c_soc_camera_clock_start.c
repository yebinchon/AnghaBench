
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {int clk_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clock_start ) (struct soc_camera_host*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct soc_camera_host*) ;

__attribute__((used)) static int soc_camera_clock_start(struct soc_camera_host *ici)
{
 int ret;

 if (!ici->ops->clock_start)
  return 0;

 mutex_lock(&ici->clk_lock);
 ret = ici->ops->clock_start(ici);
 mutex_unlock(&ici->clk_lock);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int reg_mutex; int dev; } ;


 scalar_t__ device_is_registered (int *) ;
 int device_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void css_sch_device_unregister(struct subchannel *sch)
{
 mutex_lock(&sch->reg_mutex);
 if (device_is_registered(&sch->dev))
  device_unregister(&sch->dev);
 mutex_unlock(&sch->reg_mutex);
}

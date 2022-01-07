
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dev; int ops_lock; int * ops; int entry; } ;


 int BACKLIGHT_UNREGISTERED ;
 int backlight_dev_list_mutex ;
 int backlight_notifier ;
 int backlight_unregister_fb (struct backlight_device*) ;
 int blocking_notifier_call_chain (int *,int ,struct backlight_device*) ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct backlight_device* pmac_backlight ;
 int pmac_backlight_mutex ;

void backlight_device_unregister(struct backlight_device *bd)
{
 if (!bd)
  return;

 mutex_lock(&backlight_dev_list_mutex);
 list_del(&bd->entry);
 mutex_unlock(&backlight_dev_list_mutex);
 blocking_notifier_call_chain(&backlight_notifier,
         BACKLIGHT_UNREGISTERED, bd);

 mutex_lock(&bd->ops_lock);
 bd->ops = ((void*)0);
 mutex_unlock(&bd->ops_lock);

 backlight_unregister_fb(bd);
 device_unregister(&bd->dev);
}

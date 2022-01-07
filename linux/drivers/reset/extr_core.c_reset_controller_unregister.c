
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_list_mutex ;

void reset_controller_unregister(struct reset_controller_dev *rcdev)
{
 mutex_lock(&reset_list_mutex);
 list_del(&rcdev->list);
 mutex_unlock(&reset_list_mutex);
}

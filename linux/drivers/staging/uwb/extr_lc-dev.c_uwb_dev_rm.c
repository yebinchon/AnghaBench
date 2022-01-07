
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int mutex; } ;


 int __uwb_dev_sys_rm (struct uwb_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void uwb_dev_rm(struct uwb_dev *uwb_dev)
{
 mutex_lock(&uwb_dev->mutex);
 __uwb_dev_sys_rm(uwb_dev);
 mutex_unlock(&uwb_dev->mutex);
}

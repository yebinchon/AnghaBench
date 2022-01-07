
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int mutex; } ;


 int gasket_reset_nolock (struct gasket_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int gasket_reset(struct gasket_dev *gasket_dev)
{
 int ret;

 mutex_lock(&gasket_dev->mutex);
 ret = gasket_reset_nolock(gasket_dev);
 mutex_unlock(&gasket_dev->mutex);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int
check_and_invoke_callback(struct gasket_dev *gasket_dev,
     int (*cb_function)(struct gasket_dev *))
{
 int ret = 0;

 if (cb_function) {
  mutex_lock(&gasket_dev->mutex);
  ret = cb_function(gasket_dev);
  mutex_unlock(&gasket_dev->mutex);
 }
 return ret;
}

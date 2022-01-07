
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_device {int mutex; int c_no_users; int * desc; int num_users; } ;


 int WARN_ON (int) ;
 int complete (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void tee_device_put(struct tee_device *teedev)
{
 mutex_lock(&teedev->mutex);

 if (!WARN_ON(!teedev->desc)) {
  teedev->num_users--;
  if (!teedev->num_users) {
   teedev->desc = ((void*)0);
   complete(&teedev->c_no_users);
  }
 }
 mutex_unlock(&teedev->mutex);
}

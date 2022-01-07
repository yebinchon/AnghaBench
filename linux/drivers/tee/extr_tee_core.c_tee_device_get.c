
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_device {int mutex; int num_users; int desc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool tee_device_get(struct tee_device *teedev)
{
 mutex_lock(&teedev->mutex);
 if (!teedev->desc) {
  mutex_unlock(&teedev->mutex);
  return 0;
 }
 teedev->num_users++;
 mutex_unlock(&teedev->mutex);
 return 1;
}

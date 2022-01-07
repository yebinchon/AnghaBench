
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int led_access; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void led_unlock(struct led_classdev *cdev)
{
 mutex_unlock(&cdev->led_access);
}

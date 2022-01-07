
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int led_access; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void led_lock(struct led_classdev *cdev)
{
 mutex_lock(&cdev->led_access);
}

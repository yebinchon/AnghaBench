
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int rqueue_mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void omapfb_rqueue_lock(struct omapfb_device *fbdev)
{
 mutex_lock(&fbdev->rqueue_mutex);
}

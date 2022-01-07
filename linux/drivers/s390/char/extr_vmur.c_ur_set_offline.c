
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ur_set_offline_force (struct ccw_device*,int ) ;
 int vmur_mutex ;

__attribute__((used)) static int ur_set_offline(struct ccw_device *cdev)
{
 int rc;

 mutex_lock(&vmur_mutex);
 rc = ur_set_offline_force(cdev, 0);
 mutex_unlock(&vmur_mutex);
 return rc;
}

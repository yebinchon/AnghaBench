
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EPERM ;
 int ERESTARTSYS ;

 int acpi_evalf (int ,int *,int *,char*,int,int,int) ;
 int fan_control_access_mode ;
 int fan_control_allowed ;
 int fan_mutex ;
 int fans_handle ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fan_set_speed(int speed)
{
 int rc;

 if (!fan_control_allowed)
  return -EPERM;

 if (mutex_lock_killable(&fan_mutex))
  return -ERESTARTSYS;

 rc = 0;
 switch (fan_control_access_mode) {
 case 128:
  if (speed >= 0 && speed <= 65535) {
   if (!acpi_evalf(fans_handle, ((void*)0), ((void*)0), "vddd",
     speed, speed, speed))
    rc = -EIO;
  } else
   rc = -EINVAL;
  break;

 default:
  rc = -ENXIO;
 }

 mutex_unlock(&fan_mutex);
 return rc;
}

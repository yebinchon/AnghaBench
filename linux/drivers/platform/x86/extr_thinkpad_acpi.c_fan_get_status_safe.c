
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ERESTARTSYS ;
 int fan_get_status (int *) ;
 int fan_mutex ;
 int fan_update_desired_level (int ) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fan_get_status_safe(u8 *status)
{
 int rc;
 u8 s;

 if (mutex_lock_killable(&fan_mutex))
  return -ERESTARTSYS;
 rc = fan_get_status(&s);
 if (!rc)
  fan_update_desired_level(s);
 mutex_unlock(&fan_mutex);

 if (rc)
  return rc;
 if (status)
  *status = s;

 return 0;
}

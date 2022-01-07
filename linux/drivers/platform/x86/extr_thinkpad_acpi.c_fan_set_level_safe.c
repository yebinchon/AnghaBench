
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int ERESTARTSYS ;
 int TPACPI_FAN_LAST_LEVEL ;
 int fan_control_allowed ;
 int fan_control_desired_level ;
 int fan_mutex ;
 int fan_set_level (int) ;
 int fan_update_desired_level (int) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fan_set_level_safe(int level)
{
 int rc;

 if (!fan_control_allowed)
  return -EPERM;

 if (mutex_lock_killable(&fan_mutex))
  return -ERESTARTSYS;

 if (level == TPACPI_FAN_LAST_LEVEL)
  level = fan_control_desired_level;

 rc = fan_set_level(level);
 if (!rc)
  fan_update_desired_level(level);

 mutex_unlock(&fan_mutex);
 return rc;
}

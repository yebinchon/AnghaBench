
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fan_ctrl_status_undef; } ;


 int EIO ;
 int ENXIO ;
 int EPERM ;
 int ERESTARTSYS ;
 int TPACPI_DBG_FAN ;



 int acpi_ec_write (int ,int) ;
 int acpi_evalf (int ,int *,int *,char*,int) ;
 int fan_control_access_mode ;
 int fan_control_allowed ;
 int fan_control_desired_level ;
 int fan_mutex ;
 int fan_status_offset ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int sfan_handle ;
 TYPE_1__ tp_features ;
 int vdbg_printk (int ,char*) ;

__attribute__((used)) static int fan_set_disable(void)
{
 int rc;

 if (!fan_control_allowed)
  return -EPERM;

 if (mutex_lock_killable(&fan_mutex))
  return -ERESTARTSYS;

 rc = 0;
 switch (fan_control_access_mode) {
 case 130:
 case 128:
  if (!acpi_ec_write(fan_status_offset, 0x00))
   rc = -EIO;
  else {
   fan_control_desired_level = 0;
   tp_features.fan_ctrl_status_undef = 0;
  }
  break;

 case 129:
  if (!acpi_evalf(sfan_handle, ((void*)0), ((void*)0), "vd", 0x00))
   rc = -EIO;
  else
   fan_control_desired_level = 0;
  break;

 default:
  rc = -ENXIO;
 }

 if (!rc)
  vdbg_printk(TPACPI_DBG_FAN,
   "fan control: set fan control register to 0\n");

 mutex_unlock(&fan_mutex);
 return rc;
}

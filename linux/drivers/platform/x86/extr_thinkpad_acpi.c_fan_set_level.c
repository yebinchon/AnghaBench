
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fan_ctrl_status_undef; } ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EPERM ;
 int TPACPI_DBG_FAN ;



 int TP_EC_FAN_AUTO ;
 int TP_EC_FAN_FULLSPEED ;
 int acpi_ec_write (int ,int) ;
 int acpi_evalf (int ,int *,int *,char*,int) ;
 int fan_control_access_mode ;
 int fan_control_allowed ;
 int fan_status_offset ;
 int sfan_handle ;
 TYPE_1__ tp_features ;
 int vdbg_printk (int ,char*,int) ;

__attribute__((used)) static int fan_set_level(int level)
{
 if (!fan_control_allowed)
  return -EPERM;

 switch (fan_control_access_mode) {
 case 129:
  if (level >= 0 && level <= 7) {
   if (!acpi_evalf(sfan_handle, ((void*)0), ((void*)0), "vd", level))
    return -EIO;
  } else
   return -EINVAL;
  break;

 case 130:
 case 128:
  if (!(level & TP_EC_FAN_AUTO) &&
      !(level & TP_EC_FAN_FULLSPEED) &&
      ((level < 0) || (level > 7)))
   return -EINVAL;



  if (level & TP_EC_FAN_FULLSPEED)
   level |= 7;
  else if (level & TP_EC_FAN_AUTO)
   level |= 4;

  if (!acpi_ec_write(fan_status_offset, level))
   return -EIO;
  else
   tp_features.fan_ctrl_status_undef = 0;
  break;

 default:
  return -ENXIO;
 }

 vdbg_printk(TPACPI_DBG_FAN,
  "fan control: set fan control register to 0x%02x\n", level);
 return 0;
}

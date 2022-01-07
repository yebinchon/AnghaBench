
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {scalar_t__ fan_type; int agfn_pwm; int fan_pwm_mode; } ;


 int ASUS_FAN_CTRL_AUTO ;
 int ASUS_WMI_DEVID_CPU_FAN_CTRL ;
 int ENODEV ;
 scalar_t__ FAN_TYPE_AGFN ;
 scalar_t__ FAN_TYPE_NONE ;
 scalar_t__ FAN_TYPE_SPEC83 ;
 int asus_fan_set_auto (struct asus_wmi*) ;
 scalar_t__ asus_wmi_dev_is_present (struct asus_wmi*,int ) ;
 scalar_t__ asus_wmi_has_agfn_fan (struct asus_wmi*) ;

__attribute__((used)) static int asus_wmi_fan_init(struct asus_wmi *asus)
{
 asus->fan_type = FAN_TYPE_NONE;
 asus->agfn_pwm = -1;

 if (asus_wmi_dev_is_present(asus, ASUS_WMI_DEVID_CPU_FAN_CTRL))
  asus->fan_type = FAN_TYPE_SPEC83;
 else if (asus_wmi_has_agfn_fan(asus))
  asus->fan_type = FAN_TYPE_AGFN;

 if (asus->fan_type == FAN_TYPE_NONE)
  return -ENODEV;

 asus_fan_set_auto(asus);
 asus->fan_pwm_mode = ASUS_FAN_CTRL_AUTO;
 return 0;
}

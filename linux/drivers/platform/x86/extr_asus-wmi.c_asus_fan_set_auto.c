
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int fan_type; } ;


 int ASUS_WMI_DEVID_CPU_FAN_CTRL ;
 int EIO ;
 int ENXIO ;


 int asus_agfn_fan_speed_write (struct asus_wmi*,int ,int *) ;
 int asus_wmi_set_devstate (int ,int ,int*) ;

__attribute__((used)) static int asus_fan_set_auto(struct asus_wmi *asus)
{
 int status;
 u32 retval;

 switch (asus->fan_type) {
 case 128:
  status = asus_wmi_set_devstate(ASUS_WMI_DEVID_CPU_FAN_CTRL,
            0, &retval);
  if (status)
   return status;

  if (retval != 1)
   return -EIO;
  break;

 case 129:
  status = asus_agfn_fan_speed_write(asus, 0, ((void*)0));
  if (status)
   return -ENXIO;
  break;

 default:
  return -ENXIO;
 }


 return 0;
}

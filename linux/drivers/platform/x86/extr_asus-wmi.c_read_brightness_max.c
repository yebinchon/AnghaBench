
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dummy; } ;


 int ASUS_WMI_DEVID_BRIGHTNESS ;
 int ASUS_WMI_DSTS_MAX_BRIGTH_MASK ;
 int ENODEV ;
 int asus_wmi_get_devstate (struct asus_wmi*,int ,int*) ;

__attribute__((used)) static int read_brightness_max(struct asus_wmi *asus)
{
 u32 retval;
 int err;

 err = asus_wmi_get_devstate(asus, ASUS_WMI_DEVID_BRIGHTNESS, &retval);
 if (err < 0)
  return err;

 retval = retval & ASUS_WMI_DSTS_MAX_BRIGTH_MASK;
 retval >>= 8;

 if (!retval)
  return -ENODEV;

 return retval;
}

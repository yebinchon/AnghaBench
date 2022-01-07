
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wmi {int dummy; } ;
typedef int ssize_t ;


 int asus_wmi_get_devstate_simple (struct asus_wmi*,int) ;
 int asus_wmi_set_devstate (int,int,int *) ;
 int kstrtoint (char const*,int ,int*) ;

__attribute__((used)) static ssize_t store_sys_wmi(struct asus_wmi *asus, int devid,
        const char *buf, size_t count)
{
 u32 retval;
 int err, value;

 value = asus_wmi_get_devstate_simple(asus, devid);
 if (value < 0)
  return value;

 err = kstrtoint(buf, 0, &value);
 if (err)
  return err;

 err = asus_wmi_set_devstate(devid, value, &retval);
 if (err < 0)
  return err;

 return count;
}

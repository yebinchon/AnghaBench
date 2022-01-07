
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_wmi {int dummy; } ;
typedef int ssize_t ;


 int asus_wmi_get_devstate_simple (struct asus_wmi*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_sys_wmi(struct asus_wmi *asus, int devid, char *buf)
{
 int value = asus_wmi_get_devstate_simple(asus, devid);

 if (value < 0)
  return value;

 return sprintf(buf, "%d\n", value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENXIO ;
 int acpi_evalf (int ,int *,char*,char*,int) ;
 int hkey_handle ;
 int kbdlight_brightness ;
 int kbdlight_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kbdlight_set_level(int level)
{
 int ret = 0;

 if (!hkey_handle)
  return -ENXIO;

 mutex_lock(&kbdlight_mutex);

 if (!acpi_evalf(hkey_handle, ((void*)0), "MLCS", "dd", level))
  ret = -EIO;
 else
  kbdlight_brightness = level;

 mutex_unlock(&kbdlight_mutex);

 return ret;
}

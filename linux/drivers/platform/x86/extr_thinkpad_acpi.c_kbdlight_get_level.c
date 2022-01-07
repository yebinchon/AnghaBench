
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENXIO ;
 int acpi_evalf (int ,int*,char*,char*,int ) ;
 int hkey_handle ;

__attribute__((used)) static int kbdlight_get_level(void)
{
 int status = 0;

 if (!hkey_handle)
  return -ENXIO;

 if (!acpi_evalf(hkey_handle, &status, "MLCG", "dd", 0))
  return -EIO;

 if (status < 0)
  return status;

 return status & 0x3;
}

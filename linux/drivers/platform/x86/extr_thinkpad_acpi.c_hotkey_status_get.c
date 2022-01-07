
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int hkey_handle ;

__attribute__((used)) static int hotkey_status_get(int *status)
{
 if (!acpi_evalf(hkey_handle, status, "DHKC", "d"))
  return -EIO;

 return 0;
}

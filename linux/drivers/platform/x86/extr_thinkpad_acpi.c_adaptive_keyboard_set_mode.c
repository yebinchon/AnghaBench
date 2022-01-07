
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int LAYFLAT_MODE ;
 int acpi_evalf (int ,int *,char*,char*,int) ;
 int hkey_handle ;
 int pr_err (char*) ;

__attribute__((used)) static int adaptive_keyboard_set_mode(int new_mode)
{
 if (new_mode < 0 ||
  new_mode > LAYFLAT_MODE)
  return -EINVAL;

 if (!acpi_evalf(hkey_handle, ((void*)0), "STRW", "vd", new_mode)) {
  pr_err("Cannot set adaptive keyboard mode\n");
  return -EIO;
 }

 return 0;
}

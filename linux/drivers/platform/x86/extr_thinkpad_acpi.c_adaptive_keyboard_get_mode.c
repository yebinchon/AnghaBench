
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int acpi_evalf (int ,int*,char*,char*,int ) ;
 int hkey_handle ;
 int pr_err (char*) ;

__attribute__((used)) static int adaptive_keyboard_get_mode(void)
{
 int mode = 0;

 if (!acpi_evalf(hkey_handle, &mode, "GTRW", "dd", 0)) {
  pr_err("Cannot read adaptive keyboard mode\n");
  return -EIO;
 }

 return mode;
}

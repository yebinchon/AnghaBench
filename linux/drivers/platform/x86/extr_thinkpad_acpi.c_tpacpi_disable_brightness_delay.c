
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ acpi_evalf (int ,int *,char*,char*,int ) ;
 int hkey_handle ;
 int pr_notice (char*) ;

__attribute__((used)) static void tpacpi_disable_brightness_delay(void)
{
 if (acpi_evalf(hkey_handle, ((void*)0), "PWMS", "qvd", 0))
  pr_notice("ACPI backlight control delay disabled\n");
}

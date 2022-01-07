
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibm_init_struct {int dummy; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int ENODEV ;
 int acpi_evalf (int ,int*,int *,char*,int ) ;
 int acpi_get_handle (int ,char*,int *) ;
 int hkey_handle ;
 int lcdshadow_state ;

__attribute__((used)) static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
{
 acpi_handle get_shadow_handle;
 int output;

 if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GSSS", &get_shadow_handle))) {
  lcdshadow_state = -ENODEV;
  return 0;
 }

 if (!acpi_evalf(get_shadow_handle, &output, ((void*)0), "dd", 0)) {
  lcdshadow_state = -EIO;
  return -EIO;
 }
 if (!(output & 0x10000)) {
  lcdshadow_state = -ENODEV;
  return 0;
 }
 lcdshadow_state = output & 0x1;

 return 0;
}

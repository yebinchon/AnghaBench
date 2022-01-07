
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; } ;


 char* METHOD_PEGA_DISABLE ;
 char* METHOD_PEGA_ENABLE ;
 int write_acpi_int (int ,char*,int) ;

__attribute__((used)) static int asus_pega_lucid_set(struct asus_laptop *asus, int unit, bool enable)
{
 char *method = enable ? METHOD_PEGA_ENABLE : METHOD_PEGA_DISABLE;
 return write_acpi_int(asus->handle, method, unit);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int write_acpi_int_ret (int ,char const*,int,int *) ;

__attribute__((used)) static int write_acpi_int(acpi_handle handle, const char *method, int val)
{
 return write_acpi_int_ret(handle, method, val, ((void*)0));
}

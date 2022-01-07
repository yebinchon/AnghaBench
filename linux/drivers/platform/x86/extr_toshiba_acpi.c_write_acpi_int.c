
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;


 scalar_t__ AE_OK ;
 int EIO ;
 scalar_t__ acpi_execute_simple_method (int *,char*,int) ;

__attribute__((used)) static int write_acpi_int(const char *methodName, int val)
{
 acpi_status status;

 status = acpi_execute_simple_method(((void*)0), (char *)methodName, val);
 return (status == AE_OK) ? 0 : -EIO;
}

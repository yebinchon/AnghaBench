
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int read_method_int (int ,char*,int*) ;

__attribute__((used)) static int method_gbmd(acpi_handle handle, unsigned long *ret)
{
 int result, val;

 result = read_method_int(handle, "GBMD", &val);
 *ret = val;
 return result;
}

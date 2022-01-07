
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int EIO ;
 int GET_AUX0 ;
 int GET_AUX1 ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;

__attribute__((used)) static int sensor_get_auxtrip(acpi_handle handle, int index,
       unsigned long long *value)
{
 acpi_status status;

 if ((index != 0 && index != 1) || !value)
  return -EINVAL;

 status = acpi_evaluate_integer(handle, index ? GET_AUX1 : GET_AUX0,
           ((void*)0), value);
 if (ACPI_FAILURE(status))
  return -EIO;

 return 0;
}

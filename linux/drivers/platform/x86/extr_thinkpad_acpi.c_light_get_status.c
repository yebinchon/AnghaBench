
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ light_status; } ;


 int EIO ;
 int ENXIO ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int ec_handle ;
 TYPE_1__ tp_features ;

__attribute__((used)) static int light_get_status(void)
{
 int status = 0;

 if (tp_features.light_status) {
  if (!acpi_evalf(ec_handle, &status, "KBLT", "d"))
   return -EIO;
  return (!!status);
 }

 return -ENXIO;
}

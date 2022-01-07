
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_intel_res {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int acpi_walk_namespace (int ,int *,int,int ,int *,struct sdw_intel_res*,int *) ;
 int sdw_intel_acpi_cb ;
 void* sdw_intel_add_controller (struct sdw_intel_res*) ;

void *sdw_intel_init(acpi_handle *parent_handle, struct sdw_intel_res *res)
{
 acpi_status status;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE,
         parent_handle, 1,
         sdw_intel_acpi_cb,
         ((void*)0), res, ((void*)0));
 if (ACPI_FAILURE(status))
  return ((void*)0);

 return sdw_intel_add_controller(res);
}

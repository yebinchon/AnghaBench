
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int UNINSTALL_NOTIFY_HANDLER ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,int*,int *) ;
 int processor_walk_namespace_cb ;

__attribute__((used)) static
void acpi_processor_uninstall_hotplug_notify(void)
{
 int action = UNINSTALL_NOTIFY_HANDLER;
 acpi_walk_namespace(ACPI_TYPE_ANY,
       ACPI_ROOT_OBJECT,
       ACPI_UINT32_MAX,
       processor_walk_namespace_cb, ((void*)0), &action, ((void*)0));
}

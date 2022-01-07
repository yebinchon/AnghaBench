
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {int handle; int name; } ;


 int DEVICE_NAME_PEGA ;
 int METHOD_PEGA_DISABLE ;
 int METHOD_PEGA_ENABLE ;
 int METHOD_PEGA_READ ;
 int acpi_check_handle (int ,int ,int *) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool asus_check_pega_lucid(struct asus_laptop *asus)
{
 return !strcmp(asus->name, DEVICE_NAME_PEGA) &&
    !acpi_check_handle(asus->handle, METHOD_PEGA_ENABLE, ((void*)0)) &&
    !acpi_check_handle(asus->handle, METHOD_PEGA_DISABLE, ((void*)0)) &&
    !acpi_check_handle(asus->handle, METHOD_PEGA_READ, ((void*)0));
}

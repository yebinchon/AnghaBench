
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int device; } ;


 int topstar_acpi_fncx_switch (int ,int) ;

__attribute__((used)) static void topstar_acpi_exit(struct topstar_laptop *topstar)
{
 topstar_acpi_fncx_switch(topstar->device, 0);
}

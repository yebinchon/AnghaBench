
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int device; } ;


 int topstar_acpi_fncx_switch (int ,int) ;

__attribute__((used)) static int topstar_acpi_init(struct topstar_laptop *topstar)
{
 return topstar_acpi_fncx_switch(topstar->device, 1);
}

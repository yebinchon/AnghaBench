
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ACPI_STA_DEVICE_ENABLED ;
 unsigned int ACPI_STA_DEVICE_FUNCTIONING ;

__attribute__((used)) static inline bool device_status_valid(unsigned int sta)
{





 unsigned int mask = ACPI_STA_DEVICE_ENABLED | ACPI_STA_DEVICE_FUNCTIONING;
 return (sta & mask) == mask;
}

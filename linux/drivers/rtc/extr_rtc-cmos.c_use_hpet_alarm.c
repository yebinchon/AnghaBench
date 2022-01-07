
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmos_use_acpi_alarm () ;
 scalar_t__ is_hpet_enabled () ;

__attribute__((used)) static inline int use_hpet_alarm(void)
{
 return is_hpet_enabled() && !cmos_use_acpi_alarm();
}

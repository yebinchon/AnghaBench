
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_bus {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static inline int sdw_acpi_find_slaves(struct sdw_bus *bus)
{
 return -ENOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_thermal_device {int psv_trip_id; } ;



__attribute__((used)) static void pch_wpt_add_acpi_psv_trip(struct pch_thermal_device *ptd,
          int *nr_trips)
{
 ptd->psv_trip_id = -1;

}

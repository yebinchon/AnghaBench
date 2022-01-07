
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pch_thermal_device {int bios_enabled; int crt_trip_id; int crt_temp; int hot_trip_id; int hot_temp; scalar_t__ hw_base; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ WPT_CTT ;
 scalar_t__ WPT_PHL ;
 scalar_t__ WPT_TSEL ;
 int WPT_TSEL_ETS ;
 int WPT_TSEL_PLDB ;
 int dev_err (int *,char*) ;
 int pch_wpt_add_acpi_psv_trip (struct pch_thermal_device*,int*) ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pch_wpt_init(struct pch_thermal_device *ptd, int *nr_trips)
{
 u8 tsel;
 u16 trip_temp;

 *nr_trips = 0;


 if (WPT_TSEL_ETS & readb(ptd->hw_base + WPT_TSEL)) {
  ptd->bios_enabled = 1;
  goto read_trips;
 }

 tsel = readb(ptd->hw_base + WPT_TSEL);




 if (tsel & WPT_TSEL_PLDB) {
  dev_err(&ptd->pdev->dev, "Sensor can't be enabled\n");
  return -ENODEV;
 }

 writeb(tsel|WPT_TSEL_ETS, ptd->hw_base + WPT_TSEL);
 if (!(WPT_TSEL_ETS & readb(ptd->hw_base + WPT_TSEL))) {
  dev_err(&ptd->pdev->dev, "Sensor can't be enabled\n");
  return -ENODEV;
 }

read_trips:
 ptd->crt_trip_id = -1;
 trip_temp = readw(ptd->hw_base + WPT_CTT);
 trip_temp &= 0x1FF;
 if (trip_temp) {

  ptd->crt_temp = trip_temp * 1000 / 2 - 50000;
  ptd->crt_trip_id = 0;
  ++(*nr_trips);
 }

 ptd->hot_trip_id = -1;
 trip_temp = readw(ptd->hw_base + WPT_PHL);
 trip_temp &= 0x1FF;
 if (trip_temp) {

  ptd->hot_temp = trip_temp * 1000 / 2 - 50000;
  ptd->hot_trip_id = *nr_trips;
  ++(*nr_trips);
 }

 pch_wpt_add_acpi_psv_trip(ptd, nr_trips);

 return 0;
}

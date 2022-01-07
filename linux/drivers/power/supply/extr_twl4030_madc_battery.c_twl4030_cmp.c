
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_bat_calibration {int voltage; } ;



__attribute__((used)) static int twl4030_cmp(const void *a, const void *b)
{
 return ((struct twl4030_madc_bat_calibration *)b)->voltage -
  ((struct twl4030_madc_bat_calibration *)a)->voltage;
}

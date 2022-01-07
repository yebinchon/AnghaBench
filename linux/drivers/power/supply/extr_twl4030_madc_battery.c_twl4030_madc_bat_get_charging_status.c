
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_madc_battery {int channel_ichg; } ;


 scalar_t__ madc_read (int ) ;

__attribute__((used)) static int twl4030_madc_bat_get_charging_status(struct twl4030_madc_battery *bt)
{
 return (madc_read(bt->channel_ichg) > 0) ? 1 : 0;
}

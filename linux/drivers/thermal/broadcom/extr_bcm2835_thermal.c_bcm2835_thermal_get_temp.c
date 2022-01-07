
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_thermal_data {int tz; scalar_t__ regs; } ;


 scalar_t__ BCM2835_TS_TSENSSTAT ;
 int BCM2835_TS_TSENSSTAT_DATA_MASK ;
 int BCM2835_TS_TSENSSTAT_VALID ;
 int EIO ;
 int bcm2835_thermal_adc2temp (int,int ,int ) ;
 int readl (scalar_t__) ;
 int thermal_zone_get_offset (int ) ;
 int thermal_zone_get_slope (int ) ;

__attribute__((used)) static int bcm2835_thermal_get_temp(void *d, int *temp)
{
 struct bcm2835_thermal_data *data = d;
 u32 val = readl(data->regs + BCM2835_TS_TSENSSTAT);

 if (!(val & BCM2835_TS_TSENSSTAT_VALID))
  return -EIO;

 val &= BCM2835_TS_TSENSSTAT_DATA_MASK;

 *temp = bcm2835_thermal_adc2temp(
  val,
  thermal_zone_get_offset(data->tz),
  thermal_zone_get_slope(data->tz));

 return 0;
}

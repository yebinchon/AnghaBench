
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCM2835_TS_TSENSSTAT_DATA_BITS ;
 int BIT (int ) ;

__attribute__((used)) static int bcm2835_thermal_temp2adc(int temp, int offset, int slope)
{
 temp -= offset;
 temp /= slope;

 if (temp < 0)
  temp = 0;
 if (temp >= BIT(BCM2835_TS_TSENSSTAT_DATA_BITS))
  temp = BIT(BCM2835_TS_TSENSSTAT_DATA_BITS) - 1;

 return temp;
}

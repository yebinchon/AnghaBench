
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int bcm2835_thermal_adc2temp(u32 adc, int offset, int slope)
{
 return offset + slope * adc;
}

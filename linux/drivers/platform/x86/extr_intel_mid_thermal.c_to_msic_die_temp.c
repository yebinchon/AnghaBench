
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int to_msic_die_temp(uint16_t adc_val)
{
 return (368 * (adc_val) / 1000) - 220;
}

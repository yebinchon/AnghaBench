
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static int is_valid_adc(uint16_t adc_val, uint16_t min, uint16_t max)
{
 return (adc_val >= min) && (adc_val <= max);
}

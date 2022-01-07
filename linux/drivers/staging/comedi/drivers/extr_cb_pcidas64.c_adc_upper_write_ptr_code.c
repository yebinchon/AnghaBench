
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline unsigned int adc_upper_write_ptr_code(u16 prepost_bits)
{
 return (prepost_bits >> 14) & 0x3;
}

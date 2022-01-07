
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;



__attribute__((used)) static inline u16 adc_lo_chan_4020_bits(unsigned int channel)
{
 return (channel & 0x3) << 8;
}

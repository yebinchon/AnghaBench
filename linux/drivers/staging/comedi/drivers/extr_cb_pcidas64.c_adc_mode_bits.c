
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;



__attribute__((used)) static inline u16 adc_mode_bits(unsigned int mode)
{
 return (mode & 0xf) << 12;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int ADC_SRC_4020_MASK ;

__attribute__((used)) static inline u8 adc_src_4020_bits(unsigned int source)
{
 return (source << 4) & ADC_SRC_4020_MASK;
}

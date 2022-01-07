
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int primary_DMAChannel_bits(unsigned int channel)
{
 return channel & 0x3;
}

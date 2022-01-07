
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 attenuate_bit(unsigned int channel)
{

 return 1 << (channel & 0x3);
}

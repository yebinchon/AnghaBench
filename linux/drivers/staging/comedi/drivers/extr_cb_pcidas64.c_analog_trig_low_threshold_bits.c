
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 analog_trig_low_threshold_bits(u16 threshold)
{
 return threshold & 0xfff;
}

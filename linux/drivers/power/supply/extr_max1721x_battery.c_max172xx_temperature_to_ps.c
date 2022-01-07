
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static inline int max172xx_temperature_to_ps(unsigned int reg)
{
 int val = (int16_t)(reg);

 return val * 10 / 256;
}

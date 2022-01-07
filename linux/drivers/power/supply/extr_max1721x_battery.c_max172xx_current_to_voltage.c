
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static inline int max172xx_current_to_voltage(unsigned int reg)
{
 int val = (int16_t)(reg);

 return val * 156252;
}

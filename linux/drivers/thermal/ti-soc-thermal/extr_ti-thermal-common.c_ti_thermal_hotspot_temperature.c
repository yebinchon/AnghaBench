
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ti_thermal_hotspot_temperature(int t, int s, int c)
{
 int delta = t * s / 1000 + c;

 if (delta < 0)
  delta = 0;

 return t + delta;
}

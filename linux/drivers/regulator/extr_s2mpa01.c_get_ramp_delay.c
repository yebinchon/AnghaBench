
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_ramp_delay(int ramp_delay)
{
 unsigned char cnt = 0;

 ramp_delay /= 6250;

 while (1) {
  ramp_delay = ramp_delay >> 1;
  if (ramp_delay == 0)
   break;
  cnt++;
 }

 if (cnt > 3)
  cnt = 3;

 return cnt;
}

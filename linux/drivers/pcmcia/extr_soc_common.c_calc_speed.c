
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short
calc_speed(unsigned short *spds, int num, unsigned short dflt)
{
 unsigned short speed = 0;
 int i;

 for (i = 0; i < num; i++)
  if (speed < spds[i])
   speed = spds[i];
 if (speed == 0)
  speed = dflt;

 return speed;
}

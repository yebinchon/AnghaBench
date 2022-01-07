
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (long) ;

void
ahd_delay(long usec)
{





 while (usec > 0) {
  udelay(usec % 1024);
  usec -= 1024;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msleep (unsigned int) ;
 int udelay (unsigned int) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static void _regulator_enable_delay(unsigned int delay)
{
 unsigned int ms = delay / 1000;
 unsigned int us = delay % 1000;

 if (ms > 0) {




  if (ms < 20)
   us += ms * 1000;
  else
   msleep(ms);
 }







 if (us >= 10)
  usleep_range(us, us + 100);
 else
  udelay(us);
}

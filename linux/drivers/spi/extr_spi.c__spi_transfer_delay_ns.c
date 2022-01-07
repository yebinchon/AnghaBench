
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (int,int) ;
 int ndelay (int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void _spi_transfer_delay_ns(u32 ns)
{
 if (!ns)
  return;
 if (ns <= 1000) {
  ndelay(ns);
 } else {
  u32 us = DIV_ROUND_UP(ns, 1000);

  if (us <= 10)
   udelay(us);
  else
   usleep_range(us, us + DIV_ROUND_UP(us, 10));
 }
}

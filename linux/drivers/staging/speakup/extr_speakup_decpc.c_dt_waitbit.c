
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dt_getstatus () ;
 int udelay (int) ;

__attribute__((used)) static int dt_waitbit(int bit)
{
 int timeout = 100;

 while (--timeout > 0) {
  if ((dt_getstatus() & bit) == bit)
   return 1;
  udelay(50);
 }
 return 0;
}

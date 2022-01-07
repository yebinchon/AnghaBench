
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCC_STATUS_TX ;
 int HZ ;
 int __dcc_getstatus () ;
 int __dcc_putchar (char) ;
 int jiffies ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static bool hvc_dcc_check(void)
{
 unsigned long time = jiffies + (HZ / 10);


 __dcc_putchar('\n');

 while (time_is_after_jiffies(time)) {
  if (!(__dcc_getstatus() & DCC_STATUS_TX))
   return 1;
 }

 return 0;
}

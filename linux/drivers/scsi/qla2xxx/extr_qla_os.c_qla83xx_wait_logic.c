
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int in_interrupt () ;
 int msleep (int) ;
 int schedule () ;

__attribute__((used)) static void
qla83xx_wait_logic(void)
{
 int i;


 if (!in_interrupt()) {





  msleep(100);
  schedule();
 } else {
  for (i = 0; i < 20; i++)
   cpu_relax();
 }
}

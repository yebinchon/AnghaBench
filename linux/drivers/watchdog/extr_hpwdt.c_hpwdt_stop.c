
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpwdt_timer_con ;
 unsigned long ioread8 (int ) ;
 int iowrite8 (unsigned long,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void hpwdt_stop(void)
{
 unsigned long data;

 pr_debug("stop  watchdog\n");

 data = ioread8(hpwdt_timer_con);
 data &= 0xFE;
 iowrite8(data, hpwdt_timer_con);
}

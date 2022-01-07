
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPXC3_WATCHDOG_CTL_REG ;
 int outb (int ,int ) ;
 int pr_info (char*) ;

__attribute__((used)) static void epx_c3_stop(void)
{

 outb(0, EPXC3_WATCHDOG_CTL_REG);

 pr_info("Stopped watchdog timer\n");
}

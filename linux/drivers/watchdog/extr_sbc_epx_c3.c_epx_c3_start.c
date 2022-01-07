
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPXC3_WATCHDOG_CTL_REG ;
 int outb (int,int ) ;

__attribute__((used)) static void epx_c3_start(void)
{
 outb(1, EPXC3_WATCHDOG_CTL_REG);
}

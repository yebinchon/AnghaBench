
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_iop_tick_rate () ;

__attribute__((used)) static unsigned long iop_watchdog_timeout(void)
{
 return (0xffffffffUL / get_iop_tick_rate());
}

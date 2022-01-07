
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpwdt_timer_con ;
 int ioread8 (int ) ;

__attribute__((used)) static int hpwdt_hw_is_running(void)
{
 return ioread8(hpwdt_timer_con) & 0x01;
}

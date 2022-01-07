
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sch_wdtba; } ;


 scalar_t__ RR0 ;
 TYPE_1__ ie6xx_wdt_data ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ie6xx_wdt_unlock_registers(void)
{
 outb(0x80, ie6xx_wdt_data.sch_wdtba + RR0);
 outb(0x86, ie6xx_wdt_data.sch_wdtba + RR0);
}

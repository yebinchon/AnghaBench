
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm63xx_timer_tick (int ) ;
 int bcm63xx_wdt_pet () ;

__attribute__((used)) static void bcm63xx_wdt_start(void)
{
 bcm63xx_wdt_pet();
 bcm63xx_timer_tick(0);
}

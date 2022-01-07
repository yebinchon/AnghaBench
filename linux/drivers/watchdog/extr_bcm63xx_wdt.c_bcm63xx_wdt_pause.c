
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;


 TYPE_1__ bcm63xx_wdt_device ;
 int bcm63xx_wdt_hw_stop () ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void bcm63xx_wdt_pause(void)
{
 del_timer_sync(&bcm63xx_wdt_device.timer);
 bcm63xx_wdt_hw_stop();
}

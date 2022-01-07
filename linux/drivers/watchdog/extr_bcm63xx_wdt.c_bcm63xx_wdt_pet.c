
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ticks; } ;


 int atomic_set (int *,int ) ;
 TYPE_1__ bcm63xx_wdt_device ;
 int wdt_time ;

__attribute__((used)) static void bcm63xx_wdt_pet(void)
{
 atomic_set(&bcm63xx_wdt_device.ticks, wdt_time);
}

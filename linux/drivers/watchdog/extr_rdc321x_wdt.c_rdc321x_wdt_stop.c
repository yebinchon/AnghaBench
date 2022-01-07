
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_ticks; scalar_t__ running; } ;


 int EIO ;
 TYPE_1__ rdc321x_wdt_device ;
 int ticks ;

__attribute__((used)) static int rdc321x_wdt_stop(void)
{
 if (rdc321x_wdt_device.running)
  rdc321x_wdt_device.running = 0;

 ticks = rdc321x_wdt_device.default_ticks;

 return -EIO;
}

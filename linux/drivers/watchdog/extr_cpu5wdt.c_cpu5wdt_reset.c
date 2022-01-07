
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ default_ticks; } ;


 TYPE_1__ cpu5wdt_device ;
 int pr_debug (char*,int) ;
 scalar_t__ ticks ;
 scalar_t__ verbose ;

__attribute__((used)) static void cpu5wdt_reset(void)
{
 ticks = cpu5wdt_device.default_ticks;

 if (verbose)
  pr_debug("reset (%i ticks)\n", (int) ticks);

}

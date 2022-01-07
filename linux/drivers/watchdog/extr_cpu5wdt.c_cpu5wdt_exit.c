
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; int stop; scalar_t__ queue; } ;


 int CPU5WDT_EXTENT ;
 TYPE_1__ cpu5wdt_device ;
 int cpu5wdt_misc ;
 int del_timer (int *) ;
 int misc_deregister (int *) ;
 int port ;
 int release_region (int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void cpu5wdt_exit(void)
{
 if (cpu5wdt_device.queue) {
  cpu5wdt_device.queue = 0;
  wait_for_completion(&cpu5wdt_device.stop);
  del_timer(&cpu5wdt_device.timer);
 }

 misc_deregister(&cpu5wdt_misc);

 release_region(port, CPU5WDT_EXTENT);

}

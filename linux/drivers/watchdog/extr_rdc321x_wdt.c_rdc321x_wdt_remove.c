
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int stop; scalar_t__ queue; } ;


 int misc_deregister (int *) ;
 TYPE_1__ rdc321x_wdt_device ;
 int rdc321x_wdt_misc ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int rdc321x_wdt_remove(struct platform_device *pdev)
{
 if (rdc321x_wdt_device.queue) {
  rdc321x_wdt_device.queue = 0;
  wait_for_completion(&rdc321x_wdt_device.stop);
 }

 misc_deregister(&rdc321x_wdt_misc);

 return 0;
}

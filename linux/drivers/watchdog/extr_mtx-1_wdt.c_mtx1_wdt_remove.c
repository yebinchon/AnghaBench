
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int stop; scalar_t__ queue; } ;


 int misc_deregister (int *) ;
 TYPE_1__ mtx1_wdt_device ;
 int mtx1_wdt_misc ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mtx1_wdt_remove(struct platform_device *pdev)
{

 if (mtx1_wdt_device.queue) {
  mtx1_wdt_device.queue = 0;
  wait_for_completion(&mtx1_wdt_device.stop);
 }

 misc_deregister(&mtx1_wdt_misc);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct eeepc_laptop {scalar_t__ led_workqueue; TYPE_1__ tpd_led; } ;


 int IS_ERR_OR_NULL (int ) ;
 int destroy_workqueue (scalar_t__) ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void eeepc_led_exit(struct eeepc_laptop *eeepc)
{
 if (!IS_ERR_OR_NULL(eeepc->tpd_led.dev))
  led_classdev_unregister(&eeepc->tpd_led);
 if (eeepc->led_workqueue)
  destroy_workqueue(eeepc->led_workqueue);
}

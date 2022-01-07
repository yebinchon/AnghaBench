
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * platform_data; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;
struct TYPE_5__ {TYPE_3__* platdev; } ;


 int N_SUBDEVS ;
 int platform_device_unregister (TYPE_3__*) ;
 TYPE_2__* viafb_subdevs ;

__attribute__((used)) static void via_teardown_subdevs(void)
{
 int i;

 for (i = 0; i < N_SUBDEVS; i++)
  if (viafb_subdevs[i].platdev) {
   viafb_subdevs[i].platdev->dev.platform_data = ((void*)0);
   platform_device_unregister(viafb_subdevs[i].platdev);
  }
}

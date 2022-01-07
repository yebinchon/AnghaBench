
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hub {TYPE_2__** ports; TYPE_1__* hdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int maxchild; } ;


 int pm_runtime_barrier (int *) ;

__attribute__((used)) static void hub_pm_barrier_for_all_ports(struct usb_hub *hub)
{
 int i;

 for (i = 0; i < hub->hdev->maxchild; ++i)
  pm_runtime_barrier(&hub->ports[i]->dev);
}

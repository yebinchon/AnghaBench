
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slot {TYPE_1__* zdev; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {int state; } ;



 struct slot* to_slot (struct hotplug_slot*) ;

__attribute__((used)) static int get_power_status(struct hotplug_slot *hotplug_slot, u8 *value)
{
 struct slot *slot = to_slot(hotplug_slot);

 switch (slot->zdev->state) {
 case 128:
  *value = 0;
  break;
 default:
  *value = 1;
  break;
 }
 return 0;
}

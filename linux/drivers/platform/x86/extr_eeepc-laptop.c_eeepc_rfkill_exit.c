
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ops; } ;
struct eeepc_laptop {int * wimax_rfkill; int * wwan3g_rfkill; int * bluetooth_rfkill; TYPE_1__ hotplug_slot; int * wlan_rfkill; } ;


 int EEEPC_RFKILL_NODE_1 ;
 int EEEPC_RFKILL_NODE_2 ;
 int EEEPC_RFKILL_NODE_3 ;
 int eeepc_unregister_rfkill_notifier (struct eeepc_laptop*,int ) ;
 int pci_hp_deregister (TYPE_1__*) ;
 int rfkill_destroy (int *) ;
 int rfkill_unregister (int *) ;

__attribute__((used)) static void eeepc_rfkill_exit(struct eeepc_laptop *eeepc)
{
 eeepc_unregister_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_1);
 eeepc_unregister_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_2);
 eeepc_unregister_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_3);
 if (eeepc->wlan_rfkill) {
  rfkill_unregister(eeepc->wlan_rfkill);
  rfkill_destroy(eeepc->wlan_rfkill);
  eeepc->wlan_rfkill = ((void*)0);
 }

 if (eeepc->hotplug_slot.ops)
  pci_hp_deregister(&eeepc->hotplug_slot);

 if (eeepc->bluetooth_rfkill) {
  rfkill_unregister(eeepc->bluetooth_rfkill);
  rfkill_destroy(eeepc->bluetooth_rfkill);
  eeepc->bluetooth_rfkill = ((void*)0);
 }
 if (eeepc->wwan3g_rfkill) {
  rfkill_unregister(eeepc->wwan3g_rfkill);
  rfkill_destroy(eeepc->wwan3g_rfkill);
  eeepc->wwan3g_rfkill = ((void*)0);
 }
 if (eeepc->wimax_rfkill) {
  rfkill_unregister(eeepc->wimax_rfkill);
  rfkill_destroy(eeepc->wimax_rfkill);
  eeepc->wimax_rfkill = ((void*)0);
 }
}

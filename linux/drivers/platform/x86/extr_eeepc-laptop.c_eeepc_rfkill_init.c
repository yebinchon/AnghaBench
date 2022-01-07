
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {scalar_t__ hotplug_disabled; int wimax_rfkill; int wwan3g_rfkill; int bluetooth_rfkill; int wlan_rfkill; int hotplug_lock; } ;


 int CM_ASL_3G ;
 int CM_ASL_BLUETOOTH ;
 int CM_ASL_WIMAX ;
 int CM_ASL_WLAN ;
 int EBUSY ;
 int EEEPC_RFKILL_NODE_1 ;
 int EEEPC_RFKILL_NODE_2 ;
 int EEEPC_RFKILL_NODE_3 ;
 int ENODEV ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_WIMAX ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int eeepc_new_rfkill (struct eeepc_laptop*,int *,char*,int ,int ) ;
 int eeepc_register_rfkill_notifier (struct eeepc_laptop*,int ) ;
 int eeepc_rfkill_exit (struct eeepc_laptop*) ;
 int eeepc_setup_pci_hotplug (struct eeepc_laptop*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int eeepc_rfkill_init(struct eeepc_laptop *eeepc)
{
 int result = 0;

 mutex_init(&eeepc->hotplug_lock);

 result = eeepc_new_rfkill(eeepc, &eeepc->wlan_rfkill,
      "eeepc-wlan", RFKILL_TYPE_WLAN,
      CM_ASL_WLAN);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(eeepc, &eeepc->bluetooth_rfkill,
      "eeepc-bluetooth", RFKILL_TYPE_BLUETOOTH,
      CM_ASL_BLUETOOTH);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(eeepc, &eeepc->wwan3g_rfkill,
      "eeepc-wwan3g", RFKILL_TYPE_WWAN,
      CM_ASL_3G);

 if (result && result != -ENODEV)
  goto exit;

 result = eeepc_new_rfkill(eeepc, &eeepc->wimax_rfkill,
      "eeepc-wimax", RFKILL_TYPE_WIMAX,
      CM_ASL_WIMAX);

 if (result && result != -ENODEV)
  goto exit;

 if (eeepc->hotplug_disabled)
  return 0;

 result = eeepc_setup_pci_hotplug(eeepc);




 if (result == -EBUSY)
  result = 0;

 eeepc_register_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_1);
 eeepc_register_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_2);
 eeepc_register_rfkill_notifier(eeepc, EEEPC_RFKILL_NODE_3);

exit:
 if (result && result != -ENODEV)
  eeepc_rfkill_exit(eeepc);
 return result;
}

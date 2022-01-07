
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asus_wmi {TYPE_2__* driver; int uwb; int gps; int wwan3g; int wimax; int bluetooth; int wlan; int wmi_lock; int hotplug_lock; } ;
struct TYPE_4__ {TYPE_1__* quirks; } ;
struct TYPE_3__ {int hotplug_wireless; } ;


 int ASUS_WMI_DEVID_BLUETOOTH ;
 int ASUS_WMI_DEVID_GPS ;
 int ASUS_WMI_DEVID_UWB ;
 int ASUS_WMI_DEVID_WIMAX ;
 int ASUS_WMI_DEVID_WLAN ;
 int ASUS_WMI_DEVID_WWAN3G ;
 int EBUSY ;
 int ENODEV ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_GPS ;
 int RFKILL_TYPE_UWB ;
 int RFKILL_TYPE_WIMAX ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 int asus_new_rfkill (struct asus_wmi*,int *,char*,int ,int ) ;
 int asus_register_rfkill_notifier (struct asus_wmi*,char*) ;
 int asus_rfkill_hotplug (struct asus_wmi*) ;
 int asus_setup_pci_hotplug (struct asus_wmi*) ;
 int asus_wmi_rfkill_exit (struct asus_wmi*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int asus_wmi_rfkill_init(struct asus_wmi *asus)
{
 int result = 0;

 mutex_init(&asus->hotplug_lock);
 mutex_init(&asus->wmi_lock);

 result = asus_new_rfkill(asus, &asus->wlan, "asus-wlan",
     RFKILL_TYPE_WLAN, ASUS_WMI_DEVID_WLAN);

 if (result && result != -ENODEV)
  goto exit;

 result = asus_new_rfkill(asus, &asus->bluetooth,
     "asus-bluetooth", RFKILL_TYPE_BLUETOOTH,
     ASUS_WMI_DEVID_BLUETOOTH);

 if (result && result != -ENODEV)
  goto exit;

 result = asus_new_rfkill(asus, &asus->wimax, "asus-wimax",
     RFKILL_TYPE_WIMAX, ASUS_WMI_DEVID_WIMAX);

 if (result && result != -ENODEV)
  goto exit;

 result = asus_new_rfkill(asus, &asus->wwan3g, "asus-wwan3g",
     RFKILL_TYPE_WWAN, ASUS_WMI_DEVID_WWAN3G);

 if (result && result != -ENODEV)
  goto exit;

 result = asus_new_rfkill(asus, &asus->gps, "asus-gps",
     RFKILL_TYPE_GPS, ASUS_WMI_DEVID_GPS);

 if (result && result != -ENODEV)
  goto exit;

 result = asus_new_rfkill(asus, &asus->uwb, "asus-uwb",
     RFKILL_TYPE_UWB, ASUS_WMI_DEVID_UWB);

 if (result && result != -ENODEV)
  goto exit;

 if (!asus->driver->quirks->hotplug_wireless)
  goto exit;

 result = asus_setup_pci_hotplug(asus);




 if (result == -EBUSY)
  result = 0;

 asus_register_rfkill_notifier(asus, "\\_SB.PCI0.P0P5");
 asus_register_rfkill_notifier(asus, "\\_SB.PCI0.P0P6");
 asus_register_rfkill_notifier(asus, "\\_SB.PCI0.P0P7");




 asus_rfkill_hotplug(asus);

exit:
 if (result && result != -ENODEV)
  asus_wmi_rfkill_exit(asus);

 if (result == -ENODEV)
  result = 0;

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ibm_struct {TYPE_3__* acpi; } ;
struct TYPE_8__ {int hotkey_wlsw; } ;
struct TYPE_7__ {TYPE_2__* device; } ;
struct TYPE_5__ {int device_class; } ;
struct TYPE_6__ {int dev; TYPE_1__ pnp; } ;


 int TPACPI_MAIL ;


 int TP_HKEY_EV_RFKILL_CHANGED ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int) ;
 int acpi_evalf (int ,int*,char*,char*) ;
 int dev_name (int *) ;
 int hkey_handle ;
 int hotkey_autosleep_ack ;
 int hotkey_notify_6xxx (int,int*,int*) ;
 int hotkey_notify_dockevent (int,int*,int*) ;
 int hotkey_notify_hotkey (int,int*,int*) ;
 int hotkey_notify_usrevent (int,int*,int*) ;
 int hotkey_notify_wakeup (int,int*,int*) ;
 int hotkey_wakeup_hotunplug_complete_notify_change () ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int pr_notice (char*,int) ;
 TYPE_4__ tp_features ;
 int tpacpi_send_radiosw_update () ;

__attribute__((used)) static void hotkey_notify(struct ibm_struct *ibm, u32 event)
{
 u32 hkey;
 bool send_acpi_ev;
 bool ignore_acpi_ev;
 bool known_ev;

 if (event != 0x80) {
  pr_err("unknown HKEY notification event %d\n", event);

  acpi_bus_generate_netlink_event(
     ibm->acpi->device->pnp.device_class,
     dev_name(&ibm->acpi->device->dev),
     event, 0);
  return;
 }

 while (1) {
  if (!acpi_evalf(hkey_handle, &hkey, "MHKP", "d")) {
   pr_err("failed to retrieve HKEY event\n");
   return;
  }

  if (hkey == 0) {

   return;
  }

  send_acpi_ev = 1;
  ignore_acpi_ev = 0;

  switch (hkey >> 12) {
  case 1:

   known_ev = hotkey_notify_hotkey(hkey, &send_acpi_ev,
       &ignore_acpi_ev);
   break;
  case 2:

   known_ev = hotkey_notify_wakeup(hkey, &send_acpi_ev,
       &ignore_acpi_ev);
   break;
  case 3:

   switch (hkey) {
   case 129:
    hotkey_autosleep_ack = 1;
    pr_info("bay ejected\n");
    hotkey_wakeup_hotunplug_complete_notify_change();
    known_ev = 1;
    break;
   case 128:

    known_ev = 1;
    break;
   default:
    known_ev = 0;
   }
   break;
  case 4:

   known_ev = hotkey_notify_dockevent(hkey, &send_acpi_ev,
      &ignore_acpi_ev);
   break;
  case 5:

   known_ev = hotkey_notify_usrevent(hkey, &send_acpi_ev,
       &ignore_acpi_ev);
   break;
  case 6:


   known_ev = hotkey_notify_6xxx(hkey, &send_acpi_ev,
       &ignore_acpi_ev);
   break;
  case 7:

   if (tp_features.hotkey_wlsw &&
     hkey == TP_HKEY_EV_RFKILL_CHANGED) {
    tpacpi_send_radiosw_update();
    send_acpi_ev = 0;
    known_ev = 1;
    break;
   }

  default:
   known_ev = 0;
  }
  if (!known_ev) {
   pr_notice("unhandled HKEY event 0x%04x\n", hkey);
   pr_notice("please report the conditions when this event happened to %s\n",
      TPACPI_MAIL);
  }


  if (!ignore_acpi_ev && send_acpi_ev) {
   acpi_bus_generate_netlink_event(
     ibm->acpi->device->pnp.device_class,
     dev_name(&ibm->acpi->device->dev),
     event, hkey);
  }
 }
}

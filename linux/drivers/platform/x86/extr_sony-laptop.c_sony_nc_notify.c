
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct acpi_device {int dummy; } ;
struct TYPE_6__ {unsigned int* cap; } ;
struct TYPE_4__ {int device_class; } ;
struct TYPE_5__ {int dev; TYPE_1__ pnp; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int GFX_SWITCH ;
 int HOTKEY ;
 int KILLSWITCH ;
 int __sony_nc_gfx_switch_status_get () ;
 int acpi_bus_generate_netlink_event (int ,int ,int ,int) ;
 int dev_name (int *) ;
 int dprintk (char*,...) ;
 TYPE_3__* handles ;
 int pr_err (char*,int) ;
 int sony_call_snc_handle (unsigned int,int,unsigned int*) ;
 int sony_laptop_report_input_event (int) ;
 TYPE_2__* sony_nc_acpi_device ;
 int sony_nc_acpi_handle ;
 int sony_nc_hotkeys_decode (int,unsigned int) ;
 int sony_nc_int_call (int ,char*,unsigned int*,unsigned int*) ;
 int sony_nc_rfkill_update () ;

__attribute__((used)) static void sony_nc_notify(struct acpi_device *device, u32 event)
{
 u32 real_ev = event;
 u8 ev_type = 0;
 int ret;

 dprintk("sony_nc_notify, event: 0x%.2x\n", event);

 if (event >= 0x90) {
  unsigned int result = 0;
  unsigned int arg = 0;
  unsigned int handle = 0;
  unsigned int offset = event - 0x90;

  if (offset >= ARRAY_SIZE(handles->cap)) {
   pr_err("Event 0x%x outside of capabilities list\n",
     event);
   return;
  }
  handle = handles->cap[offset];


  switch (handle) {

  case 0x0100:
  case 0x0127:
   ev_type = HOTKEY;
   ret = sony_nc_hotkeys_decode(event, handle);

   if (ret > 0) {
    sony_laptop_report_input_event(ret);
    real_ev = ret;
   }

   break;


  case 0x0124:
  case 0x0135:






   ev_type = KILLSWITCH;
   sony_call_snc_handle(handle, 0x0100, &result);
   real_ev = result & 0x03;


   if (real_ev == 1)
    sony_nc_rfkill_update();

   break;

  case 0x0128:
  case 0x0146:

   sony_call_snc_handle(handle, 0x0000, &result);
   dprintk("GFX switch event received (reason: %s)\n",
     (result == 0x1) ? "switch change" :
     (result == 0x2) ? "output switch" :
     (result == 0x3) ? "output switch" :
     "");

   ev_type = GFX_SWITCH;
   real_ev = __sony_nc_gfx_switch_status_get();
   break;

  case 0x015B:

   ev_type = GFX_SWITCH;
   real_ev = __sony_nc_gfx_switch_status_get();
   break;
  default:
   dprintk("Unknown event 0x%x for handle 0x%x\n",
     event, handle);
   break;
  }


  arg = 1 << offset;
  sony_nc_int_call(sony_nc_acpi_handle, "SN05", &arg, &result);

 } else {

  ev_type = HOTKEY;
  sony_laptop_report_input_event(real_ev);
 }
 acpi_bus_generate_netlink_event(sony_nc_acpi_device->pnp.device_class,
   dev_name(&sony_nc_acpi_device->dev), ev_type, real_ev);
}

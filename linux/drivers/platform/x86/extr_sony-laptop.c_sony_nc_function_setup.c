
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* cap; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int dprintk (char*,unsigned int) ;
 TYPE_1__* handles ;
 int pr_err (char*,unsigned int) ;
 int sony_call_snc_handle (unsigned int,int,unsigned int*) ;
 int sony_nc_acpi_handle ;
 unsigned int sony_nc_battery_care_setup (struct platform_device*,unsigned int) ;
 unsigned int sony_nc_fanspeed_setup (struct platform_device*) ;
 unsigned int sony_nc_gfx_switch_setup (struct platform_device*,unsigned int) ;
 unsigned int sony_nc_highspeed_charging_setup (struct platform_device*) ;
 int sony_nc_int_call (int ,char*,unsigned int*,unsigned int*) ;
 unsigned int sony_nc_kbd_backlight_setup (struct platform_device*,unsigned int) ;
 unsigned int sony_nc_lid_resume_setup (struct platform_device*,unsigned int) ;
 unsigned int sony_nc_lowbatt_setup (struct platform_device*) ;
 unsigned int sony_nc_panelid_setup (struct platform_device*) ;
 unsigned int sony_nc_rfkill_setup (struct acpi_device*,unsigned int) ;
 unsigned int sony_nc_smart_conn_setup (struct platform_device*) ;
 unsigned int sony_nc_thermal_setup (struct platform_device*) ;
 unsigned int sony_nc_touchpad_setup (struct platform_device*,unsigned int) ;
 unsigned int sony_nc_usb_charge_setup (struct platform_device*) ;

__attribute__((used)) static void sony_nc_function_setup(struct acpi_device *device,
  struct platform_device *pf_device)
{
 unsigned int i, result, bitmask, arg;

 if (!handles)
  return;


 for (i = 0; i < ARRAY_SIZE(handles->cap); i++) {
  unsigned int handle = handles->cap[i];

  if (!handle)
   continue;

  dprintk("setting up handle 0x%.4x\n", handle);

  switch (handle) {
  case 0x0100:
  case 0x0101:
  case 0x0127:

   sony_call_snc_handle(handle, 0, &result);
   break;
  case 0x0102:

   sony_call_snc_handle(handle, 0x100, &result);
   break;
  case 0x0105:
  case 0x0148:

   result = sony_nc_touchpad_setup(pf_device, handle);
   if (result)
    pr_err("couldn't set up touchpad control function (%d)\n",
      result);
   break;
  case 0x0115:
  case 0x0136:
  case 0x013f:
   result = sony_nc_battery_care_setup(pf_device, handle);
   if (result)
    pr_err("couldn't set up battery care function (%d)\n",
      result);
   break;
  case 0x0119:
  case 0x015D:
   result = sony_nc_lid_resume_setup(pf_device, handle);
   if (result)
    pr_err("couldn't set up lid resume function (%d)\n",
      result);
   break;
  case 0x0122:
   result = sony_nc_thermal_setup(pf_device);
   if (result)
    pr_err("couldn't set up thermal profile function (%d)\n",
      result);
   break;
  case 0x0128:
  case 0x0146:
  case 0x015B:
   result = sony_nc_gfx_switch_setup(pf_device, handle);
   if (result)
    pr_err("couldn't set up GFX Switch status (%d)\n",
      result);
   break;
  case 0x0131:
   result = sony_nc_highspeed_charging_setup(pf_device);
   if (result)
    pr_err("couldn't set up high speed charging function (%d)\n",
           result);
   break;
  case 0x0124:
  case 0x0135:
   result = sony_nc_rfkill_setup(device, handle);
   if (result)
    pr_err("couldn't set up rfkill support (%d)\n",
      result);
   break;
  case 0x0137:
  case 0x0143:
  case 0x014b:
  case 0x014c:
  case 0x0153:
  case 0x0163:
   result = sony_nc_kbd_backlight_setup(pf_device, handle);
   if (result)
    pr_err("couldn't set up keyboard backlight function (%d)\n",
      result);
   break;
  case 0x0121:
   result = sony_nc_lowbatt_setup(pf_device);
   if (result)
    pr_err("couldn't set up low battery function (%d)\n",
           result);
   break;
  case 0x0149:
   result = sony_nc_fanspeed_setup(pf_device);
   if (result)
    pr_err("couldn't set up fan speed function (%d)\n",
           result);
   break;
  case 0x0155:
   result = sony_nc_usb_charge_setup(pf_device);
   if (result)
    pr_err("couldn't set up USB charge support (%d)\n",
      result);
   break;
  case 0x011D:
   result = sony_nc_panelid_setup(pf_device);
   if (result)
    pr_err("couldn't set up panel ID function (%d)\n",
           result);
   break;
  case 0x0168:
   result = sony_nc_smart_conn_setup(pf_device);
   if (result)
    pr_err("couldn't set up smart connect support (%d)\n",
      result);
   break;
  default:
   continue;
  }
 }


 arg = 0x10;
 if (!sony_nc_int_call(sony_nc_acpi_handle, "SN00", &arg, &bitmask))
  sony_nc_int_call(sony_nc_acpi_handle, "SN02", &bitmask,
    &result);
}

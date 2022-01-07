
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {scalar_t__ wled_type; scalar_t__ bled_type; int wimax; int handle; int wwan; int bluetooth; int wlan; int gps; scalar_t__ is_pega_lucid; } ;


 int BT_RSTS ;
 int ENODEV ;
 int METHOD_BLUETOOTH ;
 int METHOD_GPS_OFF ;
 int METHOD_GPS_ON ;
 int METHOD_GPS_STATUS ;
 int METHOD_WIMAX ;
 int METHOD_WLAN ;
 int METHOD_WWAN ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_GPS ;
 int RFKILL_TYPE_WIMAX ;
 int RFKILL_TYPE_WLAN ;
 int RFKILL_TYPE_WWAN ;
 scalar_t__ TYPE_RFKILL ;
 int WL_RSTS ;
 int WM_RSTS ;
 int WW_RSTS ;
 int acpi_check_handle (int ,int ,int *) ;
 int asus_gps_rfkill_ops ;
 int asus_rfkill_exit (struct asus_laptop*) ;
 int asus_rfkill_ops ;
 int asus_rfkill_setup (struct asus_laptop*,int *,char*,int,int ,int *) ;

__attribute__((used)) static int asus_rfkill_init(struct asus_laptop *asus)
{
 int result = 0;

 if (asus->is_pega_lucid)
  return -ENODEV;

 if (!acpi_check_handle(asus->handle, METHOD_GPS_ON, ((void*)0)) &&
     !acpi_check_handle(asus->handle, METHOD_GPS_OFF, ((void*)0)) &&
     !acpi_check_handle(asus->handle, METHOD_GPS_STATUS, ((void*)0)))
  result = asus_rfkill_setup(asus, &asus->gps, "asus-gps",
        -1, RFKILL_TYPE_GPS,
        &asus_gps_rfkill_ops);
 if (result)
  goto exit;


 if (!acpi_check_handle(asus->handle, METHOD_WLAN, ((void*)0)) &&
     asus->wled_type == TYPE_RFKILL)
  result = asus_rfkill_setup(asus, &asus->wlan, "asus-wlan",
        WL_RSTS, RFKILL_TYPE_WLAN,
        &asus_rfkill_ops);
 if (result)
  goto exit;

 if (!acpi_check_handle(asus->handle, METHOD_BLUETOOTH, ((void*)0)) &&
     asus->bled_type == TYPE_RFKILL)
  result = asus_rfkill_setup(asus, &asus->bluetooth,
        "asus-bluetooth", BT_RSTS,
        RFKILL_TYPE_BLUETOOTH,
        &asus_rfkill_ops);
 if (result)
  goto exit;

 if (!acpi_check_handle(asus->handle, METHOD_WWAN, ((void*)0)))
  result = asus_rfkill_setup(asus, &asus->wwan, "asus-wwan",
        WW_RSTS, RFKILL_TYPE_WWAN,
        &asus_rfkill_ops);
 if (result)
  goto exit;

 if (!acpi_check_handle(asus->handle, METHOD_WIMAX, ((void*)0)))
  result = asus_rfkill_setup(asus, &asus->wimax, "asus-wimax",
        WM_RSTS, RFKILL_TYPE_WIMAX,
        &asus_rfkill_ops);
 if (result)
  goto exit;

exit:
 if (result)
  asus_rfkill_exit(asus);

 return result;
}

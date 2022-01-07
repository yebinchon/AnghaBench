
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct asus_wmi {int spec; int sfun; int wmi_event_queue; TYPE_3__* driver; int dsts_id; TYPE_1__* platform_device; } ;
struct TYPE_6__ {TYPE_2__* quirks; int event_guid; } ;
struct TYPE_5__ {scalar_t__ wapf; } ;
struct TYPE_4__ {struct device dev; } ;


 int ASUS_ACPI_UID_ASUSWMI ;
 int ASUS_ACPI_UID_ATK ;
 int ASUS_WMI_DEVID_CWAP ;
 int ASUS_WMI_METHODID_DCTS ;
 int ASUS_WMI_METHODID_DSTS ;
 int ASUS_WMI_METHODID_INIT ;
 int ASUS_WMI_METHODID_SFUN ;
 int ASUS_WMI_METHODID_SPEC ;
 int ASUS_WMI_MGMT_GUID ;
 int ENODEV ;
 int asus_wmi_evaluate_method (int ,int ,int,int*) ;
 int asus_wmi_notify_queue_flush (struct asus_wmi*) ;
 int asus_wmi_set_devstate (int ,scalar_t__,int *) ;
 int dev_info (struct device*,char*,...) ;
 int pr_info (char*,int,...) ;
 int strcmp (char*,int ) ;
 char* wmi_get_acpi_device_uid (int ) ;

__attribute__((used)) static int asus_wmi_platform_init(struct asus_wmi *asus)
{
 struct device *dev = &asus->platform_device->dev;
 char *wmi_uid;
 int rv;


 if (!asus_wmi_evaluate_method(ASUS_WMI_METHODID_INIT, 0, 0, &rv))
  pr_info("Initialization: %#x\n", rv);


 if (!asus_wmi_evaluate_method(ASUS_WMI_METHODID_SPEC, 0, 0x9, &rv)) {
  pr_info("BIOS WMI version: %d.%d\n", rv >> 16, rv & 0xFF);
  asus->spec = rv;
 }







 if (!asus_wmi_evaluate_method(ASUS_WMI_METHODID_SFUN, 0, 0, &rv)) {
  pr_info("SFUN value: %#x\n", rv);
  asus->sfun = rv;
 }
 wmi_uid = wmi_get_acpi_device_uid(ASUS_WMI_MGMT_GUID);
 if (!wmi_uid)
  return -ENODEV;

 if (!strcmp(wmi_uid, ASUS_ACPI_UID_ASUSWMI)) {
  dev_info(dev, "Detected ASUSWMI, use DCTS\n");
  asus->dsts_id = ASUS_WMI_METHODID_DCTS;
 } else {
  dev_info(dev, "Detected %s, not ASUSWMI, use DSTS\n", wmi_uid);
  asus->dsts_id = ASUS_WMI_METHODID_DSTS;
 }
 wmi_uid = wmi_get_acpi_device_uid(asus->driver->event_guid);
 if (wmi_uid && !strcmp(wmi_uid, ASUS_ACPI_UID_ATK)) {
  dev_info(dev, "Detected ATK, enable event queue\n");

  if (!asus_wmi_notify_queue_flush(asus))
   asus->wmi_event_queue = 1;
 }



 if (asus->driver->quirks->wapf >= 0)
  asus_wmi_set_devstate(ASUS_WMI_DEVID_CWAP,
          asus->driver->quirks->wapf, ((void*)0));

 return 0;
}

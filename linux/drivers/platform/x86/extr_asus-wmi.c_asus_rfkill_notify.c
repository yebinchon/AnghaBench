
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct asus_wmi {int hotplug_work; int hotplug_workqueue; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_NOTIFY_BUS_CHECK ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void asus_rfkill_notify(acpi_handle handle, u32 event, void *data)
{
 struct asus_wmi *asus = data;

 if (event != ACPI_NOTIFY_BUS_CHECK)
  return;
 queue_work(asus->hotplug_workqueue, &asus->hotplug_work);
}

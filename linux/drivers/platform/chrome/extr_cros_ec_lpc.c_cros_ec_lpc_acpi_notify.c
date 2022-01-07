
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cros_ec_device {int event_notifier; scalar_t__ mkbp_event_supported; } ;
typedef int acpi_handle ;


 scalar_t__ ACPI_NOTIFY_DEVICE_WAKE ;
 int blocking_notifier_call_chain (int *,int ,struct cros_ec_device*) ;
 scalar_t__ cros_ec_get_next_event (struct cros_ec_device*,int *) ;
 int pm_system_wakeup () ;

__attribute__((used)) static void cros_ec_lpc_acpi_notify(acpi_handle device, u32 value, void *data)
{
 struct cros_ec_device *ec_dev = data;

 if (ec_dev->mkbp_event_supported &&
     cros_ec_get_next_event(ec_dev, ((void*)0)) > 0)
  blocking_notifier_call_chain(&ec_dev->event_notifier, 0,
          ec_dev);

 if (value == ACPI_NOTIFY_DEVICE_WAKE)
  pm_system_wakeup();
}

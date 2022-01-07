
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int event_notifier; } ;
struct charger_data {int notifier; struct cros_ec_device* ec_device; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;

__attribute__((used)) static void cros_usbpd_charger_unregister_notifier(void *data)
{
 struct charger_data *charger = data;
 struct cros_ec_device *ec_device = charger->ec_device;

 blocking_notifier_chain_unregister(&ec_device->event_notifier,
        &charger->notifier);
}

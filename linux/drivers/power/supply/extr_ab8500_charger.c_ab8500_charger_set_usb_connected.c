
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* psy; } ;
struct TYPE_7__ {int vbus_drop_end; } ;
struct TYPE_6__ {int charger_connected; } ;
struct ab8500_charger {int charger_attached_mutex; int usb_charger_attached_work; int charger_wq; int parent; TYPE_5__ usb_chg; TYPE_2__ flags; TYPE_1__ usb; int dev; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;


 int HZ ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*,int) ;
 scalar_t__ is_ab8500 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void ab8500_charger_set_usb_connected(struct ab8500_charger *di,
 bool connected)
{
 if (connected != di->usb.charger_connected) {
  dev_dbg(di->dev, "USB connected:%i\n", connected);
  di->usb.charger_connected = connected;

  if (!connected)
   di->flags.vbus_drop_end = 0;

  sysfs_notify(&di->usb_chg.psy->dev.kobj, ((void*)0), "present");

  if (connected) {
   mutex_lock(&di->charger_attached_mutex);
   mutex_unlock(&di->charger_attached_mutex);

   if (is_ab8500(di->parent))
    queue_delayed_work(di->charger_wq,
        &di->usb_charger_attached_work,
        HZ);
  } else {
   cancel_delayed_work_sync(&di->usb_charger_attached_work);
   mutex_lock(&di->charger_attached_mutex);
   mutex_unlock(&di->charger_attached_mutex);
  }
 }
}

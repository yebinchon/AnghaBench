
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct alias_lcu* lcu; } ;
struct dasd_device {int alias_list; TYPE_1__* discipline; struct dasd_eckd_private* private; } ;
struct alias_server {int server; int lculist; } ;
struct TYPE_7__ {struct dasd_device* device; int dwork; } ;
struct TYPE_6__ {struct dasd_device* device; int worker; } ;
struct alias_lcu {int lock; int lcu; int inactive_devices; int active_devices; int grouplist; TYPE_3__ ruac_data; TYPE_2__ suc_data; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_5__ {int (* get_uid ) (struct dasd_device*,struct dasd_uid*) ;} ;


 struct alias_server* _find_server (struct dasd_uid*) ;
 int _free_lcu (struct alias_lcu*) ;
 int _free_server (struct alias_server*) ;
 int _schedule_lcu_update (struct alias_lcu*,int *) ;
 TYPE_4__ aliastree ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dasd_put_device (struct dasd_device*) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dasd_device*,struct dasd_uid*) ;

void dasd_alias_disconnect_device_from_lcu(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 unsigned long flags;
 struct alias_lcu *lcu;
 struct alias_server *server;
 int was_pending;
 struct dasd_uid uid;

 lcu = private->lcu;

 if (!lcu)
  return;
 device->discipline->get_uid(device, &uid);
 spin_lock_irqsave(&lcu->lock, flags);
 list_del_init(&device->alias_list);

 if (device == lcu->suc_data.device) {
  spin_unlock_irqrestore(&lcu->lock, flags);
  cancel_work_sync(&lcu->suc_data.worker);
  spin_lock_irqsave(&lcu->lock, flags);
  if (device == lcu->suc_data.device) {
   dasd_put_device(device);
   lcu->suc_data.device = ((void*)0);
  }
 }
 was_pending = 0;
 if (device == lcu->ruac_data.device) {
  spin_unlock_irqrestore(&lcu->lock, flags);
  was_pending = 1;
  cancel_delayed_work_sync(&lcu->ruac_data.dwork);
  spin_lock_irqsave(&lcu->lock, flags);
  if (device == lcu->ruac_data.device) {
   dasd_put_device(device);
   lcu->ruac_data.device = ((void*)0);
  }
 }
 private->lcu = ((void*)0);
 spin_unlock_irqrestore(&lcu->lock, flags);

 spin_lock_irqsave(&aliastree.lock, flags);
 spin_lock(&lcu->lock);
 if (list_empty(&lcu->grouplist) &&
     list_empty(&lcu->active_devices) &&
     list_empty(&lcu->inactive_devices)) {
  list_del(&lcu->lcu);
  spin_unlock(&lcu->lock);
  _free_lcu(lcu);
  lcu = ((void*)0);
 } else {
  if (was_pending)
   _schedule_lcu_update(lcu, ((void*)0));
  spin_unlock(&lcu->lock);
 }
 server = _find_server(&uid);
 if (server && list_empty(&server->lculist)) {
  list_del(&server->server);
  _free_server(server);
 }
 spin_unlock_irqrestore(&aliastree.lock, flags);
}

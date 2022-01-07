
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t real_unit_addr; scalar_t__ type; } ;
struct dasd_eckd_private {TYPE_1__ uid; struct alias_lcu* lcu; } ;
struct dasd_device {int alias_list; struct dasd_eckd_private* private; } ;
struct alias_lcu {int flags; int lock; int active_devices; TYPE_3__* uac; } ;
typedef size_t __u8 ;
struct TYPE_6__ {TYPE_2__* unit; } ;
struct TYPE_5__ {scalar_t__ ua_type; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int UPDATE_PENDING ;
 int _add_device_to_lcu (struct alias_lcu*,struct dasd_device*,struct dasd_device*) ;
 int _schedule_lcu_update (struct alias_lcu*,struct dasd_device*) ;
 int list_move (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int dasd_alias_add_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 __u8 uaddr = private->uid.real_unit_addr;
 struct alias_lcu *lcu = private->lcu;
 unsigned long flags;
 int rc;

 rc = 0;
 spin_lock_irqsave(&lcu->lock, flags);




 if (private->uid.type != lcu->uac->unit[uaddr].ua_type) {
  lcu->flags |= UPDATE_PENDING;
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
         "uid type mismatch - trigger rescan");
 }
 if (!(lcu->flags & UPDATE_PENDING)) {
  rc = _add_device_to_lcu(lcu, device, device);
  if (rc)
   lcu->flags |= UPDATE_PENDING;
 }
 if (lcu->flags & UPDATE_PENDING) {
  list_move(&device->alias_list, &lcu->active_devices);
  _schedule_lcu_update(lcu, device);
 }
 spin_unlock_irqrestore(&lcu->lock, flags);
 return rc;
}

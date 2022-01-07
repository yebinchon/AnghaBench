
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct alias_server* lcu; } ;
struct dasd_device {int alias_list; TYPE_1__* discipline; struct dasd_eckd_private* private; } ;
struct alias_server {int lock; int inactive_devices; int lculist; int lcu; int server; } ;
struct alias_lcu {int lock; int inactive_devices; int lculist; int lcu; int server; } ;
struct TYPE_4__ {int lock; int serverlist; } ;
struct TYPE_3__ {int (* get_uid ) (struct dasd_device*,struct dasd_uid*) ;} ;


 scalar_t__ IS_ERR (struct alias_server*) ;
 int PTR_ERR (struct alias_server*) ;
 struct alias_server* _allocate_lcu (struct dasd_uid*) ;
 struct alias_server* _allocate_server (struct dasd_uid*) ;
 struct alias_server* _find_lcu (struct alias_server*,struct dasd_uid*) ;
 struct alias_server* _find_server (struct dasd_uid*) ;
 int _free_lcu (struct alias_server*) ;
 int _free_server (struct alias_server*) ;
 TYPE_2__ aliastree ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dasd_device*,struct dasd_uid*) ;

int dasd_alias_make_device_known_to_lcu(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 unsigned long flags;
 struct alias_server *server, *newserver;
 struct alias_lcu *lcu, *newlcu;
 struct dasd_uid uid;

 device->discipline->get_uid(device, &uid);
 spin_lock_irqsave(&aliastree.lock, flags);
 server = _find_server(&uid);
 if (!server) {
  spin_unlock_irqrestore(&aliastree.lock, flags);
  newserver = _allocate_server(&uid);
  if (IS_ERR(newserver))
   return PTR_ERR(newserver);
  spin_lock_irqsave(&aliastree.lock, flags);
  server = _find_server(&uid);
  if (!server) {
   list_add(&newserver->server, &aliastree.serverlist);
   server = newserver;
  } else {

   _free_server(newserver);
  }
 }

 lcu = _find_lcu(server, &uid);
 if (!lcu) {
  spin_unlock_irqrestore(&aliastree.lock, flags);
  newlcu = _allocate_lcu(&uid);
  if (IS_ERR(newlcu))
   return PTR_ERR(newlcu);
  spin_lock_irqsave(&aliastree.lock, flags);
  lcu = _find_lcu(server, &uid);
  if (!lcu) {
   list_add(&newlcu->lcu, &server->lculist);
   lcu = newlcu;
  } else {

   _free_lcu(newlcu);
  }
 }
 spin_lock(&lcu->lock);
 list_add(&device->alias_list, &lcu->inactive_devices);
 private->lcu = lcu;
 spin_unlock(&lcu->lock);
 spin_unlock_irqrestore(&aliastree.lock, flags);

 return 0;
}

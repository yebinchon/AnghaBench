
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; int mutex; } ;
struct uwb_rc {TYPE_3__ uwb_dev; } ;
struct uwb_pal {char* name; TYPE_2__* device; int debugfs_dir; int node; struct uwb_rc* rc; } ;
struct TYPE_5__ {int kobj; } ;


 int debugfs_remove (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_remove_link (int *,char*) ;
 int uwb_radio_stop (struct uwb_pal*) ;
 scalar_t__ uwb_rc_class_device_exists (struct uwb_rc*) ;

void uwb_pal_unregister(struct uwb_pal *pal)
{
 struct uwb_rc *rc = pal->rc;

 uwb_radio_stop(pal);

 mutex_lock(&rc->uwb_dev.mutex);
 list_del(&pal->node);
 mutex_unlock(&rc->uwb_dev.mutex);

 debugfs_remove(pal->debugfs_dir);

 if (pal->device) {

  if (uwb_rc_class_device_exists(rc))
   sysfs_remove_link(&rc->uwb_dev.dev.kobj, pal->name);


  sysfs_remove_link(&pal->device->kobj, "uwb_rc");
 }
}

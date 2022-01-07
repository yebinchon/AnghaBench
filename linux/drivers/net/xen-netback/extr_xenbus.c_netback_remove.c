
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct xenbus_device {TYPE_1__ dev; int nodename; } ;
struct backend_info {struct backend_info* hotplug_script; int * vif; } ;


 int KOBJ_OFFLINE ;
 int XBT_NIL ;
 int XenbusStateClosed ;
 struct backend_info* dev_get_drvdata (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,int *) ;
 int kfree (struct backend_info*) ;
 int kobject_uevent (int *,int ) ;
 int set_backend_state (struct backend_info*,int ) ;
 int unregister_hotplug_status_watch (struct backend_info*) ;
 int xen_unregister_watchers (int *) ;
 int xenbus_rm (int ,int ,char*) ;
 int xenvif_free (int *) ;

__attribute__((used)) static int netback_remove(struct xenbus_device *dev)
{
 struct backend_info *be = dev_get_drvdata(&dev->dev);

 set_backend_state(be, XenbusStateClosed);

 unregister_hotplug_status_watch(be);
 if (be->vif) {
  kobject_uevent(&dev->dev.kobj, KOBJ_OFFLINE);
  xen_unregister_watchers(be->vif);
  xenbus_rm(XBT_NIL, dev->nodename, "hotplug-status");
  xenvif_free(be->vif);
  be->vif = ((void*)0);
 }
 kfree(be->hotplug_script);
 kfree(be);
 dev_set_drvdata(&dev->dev, ((void*)0));
 return 0;
}

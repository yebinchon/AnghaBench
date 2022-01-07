
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* node; int * callback; } ;
struct xenvif {TYPE_1__ mcast_ctrl_watch; } ;
struct xenbus_device {char* otherend; } ;


 int EADDRINUSE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int pr_err (char*,...) ;
 int pr_err_ratelimited (char*) ;
 int register_xenbus_watch (TYPE_1__*) ;
 int snprintf (char*,unsigned int,char*,char*) ;
 int strlen (char*) ;
 int * xen_mcast_ctrl_changed ;

__attribute__((used)) static int xen_register_mcast_ctrl_watch(struct xenbus_device *dev,
      struct xenvif *vif)
{
 int err = 0;
 char *node;
 unsigned maxlen = strlen(dev->otherend) +
  sizeof("/request-multicast-control");

 if (vif->mcast_ctrl_watch.node) {
  pr_err_ratelimited("Watch is already registered\n");
  return -EADDRINUSE;
 }

 node = kmalloc(maxlen, GFP_KERNEL);
 if (!node) {
  pr_err("Failed to allocate memory for watch\n");
  return -ENOMEM;
 }
 snprintf(node, maxlen, "%s/request-multicast-control",
   dev->otherend);
 vif->mcast_ctrl_watch.node = node;
 vif->mcast_ctrl_watch.callback = xen_mcast_ctrl_changed;
 err = register_xenbus_watch(&vif->mcast_ctrl_watch);
 if (err) {
  pr_err("Failed to set watcher %s\n",
         vif->mcast_ctrl_watch.node);
  kfree(node);
  vif->mcast_ctrl_watch.node = ((void*)0);
  vif->mcast_ctrl_watch.callback = ((void*)0);
 }
 return err;
}

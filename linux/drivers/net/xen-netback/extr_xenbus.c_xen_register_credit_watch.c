
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* node; int * callback; } ;
struct xenvif {TYPE_1__ credit_watch; } ;
struct xenbus_device {char* nodename; } ;


 int EADDRINUSE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int pr_err (char*,char*) ;
 int register_xenbus_watch (TYPE_1__*) ;
 int snprintf (char*,unsigned int,char*,char*) ;
 int strlen (char*) ;
 int * xen_net_rate_changed ;

__attribute__((used)) static int xen_register_credit_watch(struct xenbus_device *dev,
         struct xenvif *vif)
{
 int err = 0;
 char *node;
 unsigned maxlen = strlen(dev->nodename) + sizeof("/rate");

 if (vif->credit_watch.node)
  return -EADDRINUSE;

 node = kmalloc(maxlen, GFP_KERNEL);
 if (!node)
  return -ENOMEM;
 snprintf(node, maxlen, "%s/rate", dev->nodename);
 vif->credit_watch.node = node;
 vif->credit_watch.callback = xen_net_rate_changed;
 err = register_xenbus_watch(&vif->credit_watch);
 if (err) {
  pr_err("Failed to set watcher %s\n", vif->credit_watch.node);
  kfree(node);
  vif->credit_watch.node = ((void*)0);
  vif->credit_watch.callback = ((void*)0);
 }
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * node; } ;
struct xenvif {TYPE_1__ mcast_ctrl_watch; } ;


 int kfree (int *) ;
 int unregister_xenbus_watch (TYPE_1__*) ;

__attribute__((used)) static void xen_unregister_mcast_ctrl_watch(struct xenvif *vif)
{
 if (vif->mcast_ctrl_watch.node) {
  unregister_xenbus_watch(&vif->mcast_ctrl_watch);
  kfree(vif->mcast_ctrl_watch.node);
  vif->mcast_ctrl_watch.node = ((void*)0);
 }
}

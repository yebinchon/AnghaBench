
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int dummy; } ;
struct xenbus_device {int dummy; } ;


 int xen_register_credit_watch (struct xenbus_device*,struct xenvif*) ;
 int xen_register_mcast_ctrl_watch (struct xenbus_device*,struct xenvif*) ;

__attribute__((used)) static void xen_register_watchers(struct xenbus_device *dev,
      struct xenvif *vif)
{
 xen_register_credit_watch(dev, vif);
 xen_register_mcast_ctrl_watch(dev, vif);
}

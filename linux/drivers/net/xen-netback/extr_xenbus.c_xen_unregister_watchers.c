
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int dummy; } ;


 int xen_unregister_credit_watch (struct xenvif*) ;
 int xen_unregister_mcast_ctrl_watch (struct xenvif*) ;

__attribute__((used)) static void xen_unregister_watchers(struct xenvif *vif)
{
 xen_unregister_mcast_ctrl_watch(vif);
 xen_unregister_credit_watch(vif);
}

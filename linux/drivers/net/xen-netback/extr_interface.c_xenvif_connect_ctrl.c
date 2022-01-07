
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sring; } ;
struct xenvif {int ctrl_irq; TYPE_1__ ctrl; int domid; struct net_device* dev; } ;
struct xen_netif_ctrl_sring {int dummy; } ;
struct net_device {int name; } ;
typedef int grant_ref_t ;


 int BACK_RING_INIT (TYPE_1__*,struct xen_netif_ctrl_sring*,int ) ;
 int IRQF_ONESHOT ;
 int XEN_PAGE_SIZE ;
 int bind_interdomain_evtchn_to_irq (int ,unsigned int) ;
 int pr_warn (char*,int ) ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct xenvif*) ;
 int unbind_from_irqhandler (int,struct xenvif*) ;
 int xenbus_map_ring_valloc (int ,int *,int,void**) ;
 int xenbus_unmap_ring_vfree (int ,int *) ;
 int xenvif_ctrl_irq_fn ;
 int xenvif_deinit_hash (struct xenvif*) ;
 int xenvif_init_hash (struct xenvif*) ;
 int xenvif_to_xenbus_device (struct xenvif*) ;

int xenvif_connect_ctrl(struct xenvif *vif, grant_ref_t ring_ref,
   unsigned int evtchn)
{
 struct net_device *dev = vif->dev;
 void *addr;
 struct xen_netif_ctrl_sring *shared;
 int err;

 err = xenbus_map_ring_valloc(xenvif_to_xenbus_device(vif),
         &ring_ref, 1, &addr);
 if (err)
  goto err;

 shared = (struct xen_netif_ctrl_sring *)addr;
 BACK_RING_INIT(&vif->ctrl, shared, XEN_PAGE_SIZE);

 err = bind_interdomain_evtchn_to_irq(vif->domid, evtchn);
 if (err < 0)
  goto err_unmap;

 vif->ctrl_irq = err;

 xenvif_init_hash(vif);

 err = request_threaded_irq(vif->ctrl_irq, ((void*)0), xenvif_ctrl_irq_fn,
       IRQF_ONESHOT, "xen-netback-ctrl", vif);
 if (err) {
  pr_warn("Could not setup irq handler for %s\n", dev->name);
  goto err_deinit;
 }

 return 0;

err_deinit:
 xenvif_deinit_hash(vif);
 unbind_from_irqhandler(vif->ctrl_irq, vif);
 vif->ctrl_irq = 0;

err_unmap:
 xenbus_unmap_ring_vfree(xenvif_to_xenbus_device(vif),
    vif->ctrl.sring);
 vif->ctrl.sring = ((void*)0);

err:
 return err;
}

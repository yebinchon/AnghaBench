
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sring; } ;
struct xenvif {TYPE_1__ ctrl; scalar_t__ ctrl_irq; } ;


 int unbind_from_irqhandler (scalar_t__,struct xenvif*) ;
 int xenbus_unmap_ring_vfree (int ,int *) ;
 int xenvif_deinit_hash (struct xenvif*) ;
 int xenvif_to_xenbus_device (struct xenvif*) ;

void xenvif_disconnect_ctrl(struct xenvif *vif)
{
 if (vif->ctrl_irq) {
  xenvif_deinit_hash(vif);
  unbind_from_irqhandler(vif->ctrl_irq, vif);
  vif->ctrl_irq = 0;
 }

 if (vif->ctrl.sring) {
  xenbus_unmap_ring_vfree(xenvif_to_xenbus_device(vif),
     vif->ctrl.sring);
  vif->ctrl.sring = ((void*)0);
 }
}

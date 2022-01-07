
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req_cons; TYPE_1__* sring; } ;
struct xenvif {TYPE_2__ ctrl; } ;
struct xen_netif_ctrl_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ req_prod; scalar_t__ req_event; } ;
typedef scalar_t__ RING_IDX ;


 int RING_COPY_REQUEST (TYPE_2__*,scalar_t__,struct xen_netif_ctrl_request*) ;
 int process_ctrl_request (struct xenvif*,struct xen_netif_ctrl_request*) ;
 int rmb () ;

__attribute__((used)) static void xenvif_ctrl_action(struct xenvif *vif)
{
 for (;;) {
  RING_IDX req_prod, req_cons;

  req_prod = vif->ctrl.sring->req_prod;
  req_cons = vif->ctrl.req_cons;


  rmb();

  if (req_cons == req_prod)
   break;

  while (req_cons != req_prod) {
   struct xen_netif_ctrl_request req;

   RING_COPY_REQUEST(&vif->ctrl, req_cons, &req);
   req_cons++;

   process_ctrl_request(vif, &req);
  }

  vif->ctrl.req_cons = req_cons;
  vif->ctrl.sring->req_event = req_cons + 1;
 }
}

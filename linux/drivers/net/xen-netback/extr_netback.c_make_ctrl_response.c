
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rsp_prod_pvt; } ;
struct xenvif {TYPE_1__ ctrl; } ;
struct xen_netif_ctrl_response {int data; int status; int type; int id; } ;
struct xen_netif_ctrl_request {int type; int id; } ;
typedef scalar_t__ RING_IDX ;


 struct xen_netif_ctrl_response* RING_GET_RESPONSE (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void make_ctrl_response(struct xenvif *vif,
          const struct xen_netif_ctrl_request *req,
          u32 status, u32 data)
{
 RING_IDX idx = vif->ctrl.rsp_prod_pvt;
 struct xen_netif_ctrl_response rsp = {
  .id = req->id,
  .type = req->type,
  .status = status,
  .data = data,
 };

 *RING_GET_RESPONSE(&vif->ctrl, idx) = rsp;
 vif->ctrl.rsp_prod_pvt = ++idx;
}

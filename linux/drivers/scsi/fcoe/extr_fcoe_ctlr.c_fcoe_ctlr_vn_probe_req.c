
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ port_id; int port_name; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;
struct fcoe_rport {int flags; int enode_mac; TYPE_3__ rdata; } ;
struct fcoe_ctlr {scalar_t__ port_id; int state; TYPE_1__* lp; } ;
struct TYPE_4__ {int wwpn; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_PROBE_REP ;





 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,...) ;
 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;

__attribute__((used)) static void fcoe_ctlr_vn_probe_req(struct fcoe_ctlr *fip,
       struct fcoe_rport *frport)
{
 if (frport->rdata.ids.port_id != fip->port_id)
  return;

 switch (fip->state) {
 case 132:
 case 128:
  LIBFCOE_FIP_DBG(fip, "vn_probe_req: send reply, state %x\n",
    fip->state);
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REP,
      frport->enode_mac, 0);
  break;
 case 131:
 case 130:







  if (fip->lp->wwpn > frport->rdata.ids.port_name &&
      !(frport->flags & FIP_FL_REC_OR_P2P)) {
   LIBFCOE_FIP_DBG(fip, "vn_probe_req: "
     "port_id collision\n");
   fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REP,
       frport->enode_mac, 0);
   break;
  }

 case 129:
  LIBFCOE_FIP_DBG(fip, "vn_probe_req: "
    "restart VN2VN negotiation\n");
  fcoe_ctlr_vn_restart(fip);
  break;
 default:
  LIBFCOE_FIP_DBG(fip, "vn_probe_req: ignore state %x\n",
    fip->state);
  break;
 }
}

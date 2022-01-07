
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int port_id; int port_name; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;
struct fcoe_rport {int flags; TYPE_3__ rdata; int fcoe_len; int enode_mac; } ;
struct fcoe_ctlr {int state; int port_id; TYPE_1__* lp; } ;
struct TYPE_4__ {int wwpn; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_CLAIM_REP ;
 int FIP_SC_VN_PROBE_REQ ;





 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,...) ;
 int fcoe_all_vn2vn ;
 int fcoe_ctlr_fcoe_size (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_add (struct fcoe_ctlr*,struct fcoe_rport*) ;
 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;
 int min (int ,int ) ;

__attribute__((used)) static void fcoe_ctlr_vn_claim_notify(struct fcoe_ctlr *fip,
          struct fcoe_rport *new)
{
 if (new->flags & FIP_FL_REC_OR_P2P) {
  LIBFCOE_FIP_DBG(fip, "send probe req for P2P/REC\n");
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
  return;
 }
 switch (fip->state) {
 case 129:
 case 131:
 case 130:
  if (new->rdata.ids.port_id == fip->port_id) {
   LIBFCOE_FIP_DBG(fip, "vn_claim_notify: "
     "restart, state %d\n",
     fip->state);
   fcoe_ctlr_vn_restart(fip);
  }
  break;
 case 132:
 case 128:
  if (new->rdata.ids.port_id == fip->port_id) {
   if (new->rdata.ids.port_name > fip->lp->wwpn) {
    LIBFCOE_FIP_DBG(fip, "vn_claim_notify: "
      "restart, port_id collision\n");
    fcoe_ctlr_vn_restart(fip);
    break;
   }
   LIBFCOE_FIP_DBG(fip, "vn_claim_notify: "
     "send claim notify\n");
   fcoe_ctlr_vn_send_claim(fip);
   break;
  }
  LIBFCOE_FIP_DBG(fip, "vn_claim_notify: send reply to %x\n",
    new->rdata.ids.port_id);
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_CLAIM_REP, new->enode_mac,
      min((u32)new->fcoe_len,
          fcoe_ctlr_fcoe_size(fip)));
  fcoe_ctlr_vn_add(fip, new);
  break;
 default:
  LIBFCOE_FIP_DBG(fip, "vn_claim_notify: "
    "ignoring claim from %x\n",
    new->rdata.ids.port_id);
  break;
 }
}

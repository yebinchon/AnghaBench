
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ node_name; scalar_t__ port_name; int port_id; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;
struct fcoe_rport {int flags; TYPE_3__ rdata; scalar_t__ time; } ;
struct fcoe_ctlr {scalar_t__ state; scalar_t__ sol_time; struct fc_lport* lp; } ;
struct TYPE_4__ {scalar_t__ node_name; scalar_t__ port_name; int port_id; } ;
struct fc_rport_priv {int kref; TYPE_1__ ids; } ;
struct fc_lport {int dummy; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_PROBE_REQ ;
 scalar_t__ FIP_ST_VNMP_UP ;
 int FIP_VN_ANN_WAIT ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,...) ;
 int fc_rport_destroy ;
 int fc_rport_login (struct fc_rport_priv*) ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 int fcoe_all_vn2vn ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;
 scalar_t__ jiffies ;
 int kref_put (int *,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fcoe_ctlr_vn_beacon(struct fcoe_ctlr *fip,
    struct fcoe_rport *new)
{
 struct fc_lport *lport = fip->lp;
 struct fc_rport_priv *rdata;
 struct fcoe_rport *frport;

 if (new->flags & FIP_FL_REC_OR_P2P) {
  LIBFCOE_FIP_DBG(fip, "p2p beacon while in vn2vn mode\n");
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
  return;
 }
 rdata = fc_rport_lookup(lport, new->rdata.ids.port_id);
 if (rdata) {
  if (rdata->ids.node_name == new->rdata.ids.node_name &&
      rdata->ids.port_name == new->rdata.ids.port_name) {
   frport = fcoe_ctlr_rport(rdata);

   LIBFCOE_FIP_DBG(fip, "beacon from rport %x\n",
     rdata->ids.port_id);
   if (!frport->time && fip->state == FIP_ST_VNMP_UP) {
    LIBFCOE_FIP_DBG(fip, "beacon expired "
      "for rport %x\n",
      rdata->ids.port_id);
    fc_rport_login(rdata);
   }
   frport->time = jiffies;
  }
  kref_put(&rdata->kref, fc_rport_destroy);
  return;
 }
 if (fip->state != FIP_ST_VNMP_UP)
  return;






 LIBFCOE_FIP_DBG(fip, "beacon from new rport %x. sending claim notify\n",
   new->rdata.ids.port_id);
 if (time_after(jiffies,
         fip->sol_time + msecs_to_jiffies(FIP_VN_ANN_WAIT)))
  fcoe_ctlr_vn_send_claim(fip);
}

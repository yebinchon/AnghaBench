
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ port_id; int port_name; int node_name; } ;
struct TYPE_6__ {TYPE_2__ ids; } ;
struct fcoe_rport {scalar_t__ time; int vn_mac; int enode_mac; int login_count; int flags; scalar_t__ fcoe_len; TYPE_3__ rdata; } ;
struct fcoe_ctlr {scalar_t__ port_id; struct fc_lport* lp; } ;
struct fc_rport_identifiers {int port_name; int node_name; } ;
struct fc_rport_priv {int rp_state; int rp_mutex; struct fc_rport_identifiers ids; int disc_id; int * ops; } ;
struct TYPE_4__ {int disc_id; int disc_mutex; } ;
struct fc_lport {TYPE_1__ disc; } ;


 int ETH_ALEN ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,scalar_t__,...) ;
 struct fc_rport_priv* fc_rport_create (struct fc_lport*,scalar_t__) ;
 int fc_rport_logoff (struct fc_rport_priv*) ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_rport_ops ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_ctlr_vn_add(struct fcoe_ctlr *fip, struct fcoe_rport *new)
{
 struct fc_lport *lport = fip->lp;
 struct fc_rport_priv *rdata;
 struct fc_rport_identifiers *ids;
 struct fcoe_rport *frport;
 u32 port_id;

 port_id = new->rdata.ids.port_id;
 if (port_id == fip->port_id)
  return;

 mutex_lock(&lport->disc.disc_mutex);
 rdata = fc_rport_create(lport, port_id);
 if (!rdata) {
  mutex_unlock(&lport->disc.disc_mutex);
  return;
 }
 mutex_lock(&rdata->rp_mutex);
 mutex_unlock(&lport->disc.disc_mutex);

 rdata->ops = &fcoe_ctlr_vn_rport_ops;
 rdata->disc_id = lport->disc.disc_id;

 ids = &rdata->ids;
 if ((ids->port_name != -1 &&
      ids->port_name != new->rdata.ids.port_name) ||
     (ids->node_name != -1 &&
      ids->node_name != new->rdata.ids.node_name)) {
  mutex_unlock(&rdata->rp_mutex);
  LIBFCOE_FIP_DBG(fip, "vn_add rport logoff %6.6x\n", port_id);
  fc_rport_logoff(rdata);
  mutex_lock(&rdata->rp_mutex);
 }
 ids->port_name = new->rdata.ids.port_name;
 ids->node_name = new->rdata.ids.node_name;
 mutex_unlock(&rdata->rp_mutex);

 frport = fcoe_ctlr_rport(rdata);
 LIBFCOE_FIP_DBG(fip, "vn_add rport %6.6x %s state %d\n",
   port_id, frport->fcoe_len ? "old" : "new",
   rdata->rp_state);
 frport->fcoe_len = new->fcoe_len;
 frport->flags = new->flags;
 frport->login_count = new->login_count;
 memcpy(frport->enode_mac, new->enode_mac, ETH_ALEN);
 memcpy(frport->vn_mac, new->vn_mac, ETH_ALEN);
 frport->time = 0;
}

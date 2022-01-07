
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fcoe_rport {int enode_mac; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_rport_priv {int kref; } ;
struct fc_lport {int dummy; } ;


 int ETH_ALEN ;
 int fc_rport_destroy ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int kref_put (int *,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int fcoe_ctlr_vn_lookup(struct fcoe_ctlr *fip, u32 port_id, u8 *mac)
{
 struct fc_lport *lport = fip->lp;
 struct fc_rport_priv *rdata;
 struct fcoe_rport *frport;
 int ret = -1;

 rdata = fc_rport_lookup(lport, port_id);
 if (rdata) {
  frport = fcoe_ctlr_rport(rdata);
  memcpy(mac, frport->enode_mac, ETH_ALEN);
  ret = 0;
  kref_put(&rdata->kref, fc_rport_destroy);
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct fip_header {int fip_subcode; } ;
struct fcoe_rport {int dummy; } ;
struct fcoe_ctlr {int ctlr_mutex; } ;
typedef enum fip_vlan_subcode { ____Placeholder_fip_vlan_subcode } fip_vlan_subcode ;


 int FIP_SC_VL_REQ ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int) ;
 int fcoe_ctlr_vlan_disc_reply (struct fcoe_ctlr*,struct fcoe_rport*) ;
 int fcoe_ctlr_vlan_parse (struct fcoe_ctlr*,struct sk_buff*,struct fcoe_rport*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fcoe_ctlr_vlan_recv(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 struct fip_header *fiph;
 enum fip_vlan_subcode sub;
 struct fcoe_rport frport = { };
 int rc;

 fiph = (struct fip_header *)skb->data;
 sub = fiph->fip_subcode;
 rc = fcoe_ctlr_vlan_parse(fip, skb, &frport);
 if (rc) {
  LIBFCOE_FIP_DBG(fip, "vlan_recv vlan_parse error %d\n", rc);
  goto drop;
 }
 mutex_lock(&fip->ctlr_mutex);
 if (sub == FIP_SC_VL_REQ)
  fcoe_ctlr_vlan_disc_reply(fip, &frport);
 mutex_unlock(&fip->ctlr_mutex);

drop:
 kfree_skb(skb);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct fnic {int dummy; } ;
struct fip_header {scalar_t__ fip_subcode; int fip_flags; int fip_dl_len; int fip_ver; int fip_op; } ;


 int FIP_BPW ;
 scalar_t__ FIP_OP_CTRL ;
 scalar_t__ FIP_OP_DISC ;
 scalar_t__ FIP_OP_VLAN ;
 scalar_t__ FIP_SC_ADV ;
 scalar_t__ FIP_SC_CLR_VLINK ;
 scalar_t__ FIP_SC_VL_NOTE ;
 scalar_t__ FIP_VER ;
 scalar_t__ FIP_VER_DECAPS (int ) ;
 int FNIC_EVT_START_VLAN_DISC ;
 int fnic_event_enq (struct fnic*,int ) ;
 int fnic_fcoe_process_vlan_resp (struct fnic*,struct sk_buff*) ;
 scalar_t__ fnic_fcoe_vlan_check (struct fnic*,int) ;
 int ntohs (int ) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;

__attribute__((used)) static int fnic_fcoe_handle_fip_frame(struct fnic *fnic, struct sk_buff *skb)
{
 struct fip_header *fiph;
 int ret = 1;
 u16 op;
 u8 sub;

 if (!skb || !(skb->data))
  return -1;

 if (skb_linearize(skb))
  goto drop;

 fiph = (struct fip_header *)skb->data;
 op = ntohs(fiph->fip_op);
 sub = fiph->fip_subcode;

 if (FIP_VER_DECAPS(fiph->fip_ver) != FIP_VER)
  goto drop;

 if (ntohs(fiph->fip_dl_len) * FIP_BPW + sizeof(*fiph) > skb->len)
  goto drop;

 if (op == FIP_OP_DISC && sub == FIP_SC_ADV) {
  if (fnic_fcoe_vlan_check(fnic, ntohs(fiph->fip_flags)))
   goto drop;

  ret = 1;
 } else if (op == FIP_OP_VLAN && sub == FIP_SC_VL_NOTE) {

  fnic_fcoe_process_vlan_resp(fnic, skb);
  ret = 0;
 } else if (op == FIP_OP_CTRL && sub == FIP_SC_CLR_VLINK) {

  fnic_event_enq(fnic, FNIC_EVT_START_VLAN_DISC);

  ret = 1;
 }
drop:
 return ret;
}

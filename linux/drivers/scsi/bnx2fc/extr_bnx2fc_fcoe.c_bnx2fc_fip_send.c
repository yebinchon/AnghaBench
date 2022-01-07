
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct fip_header {scalar_t__ fip_subcode; int fip_op; } ;
struct fcoe_ctlr {int dummy; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct TYPE_2__ {int netdev; } ;


 int BNX2FC_MISC_DBG (char*,int ,int ) ;
 int ETH_ALEN ;
 scalar_t__ FIP_OP_CTRL ;
 scalar_t__ FIP_SC_SOL ;
 TYPE_1__* bnx2fc_from_ctlr (struct fcoe_ctlr*) ;
 scalar_t__ bnx2fc_log_fka ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static void bnx2fc_fip_send(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 struct fip_header *fiph;
 struct ethhdr *eth_hdr;
 u16 op;
 u8 sub;

 fiph = (struct fip_header *) ((void *)skb->data + 2 * ETH_ALEN + 2);
 eth_hdr = (struct ethhdr *)skb_mac_header(skb);
 op = ntohs(fiph->fip_op);
 sub = fiph->fip_subcode;

 if (op == FIP_OP_CTRL && sub == FIP_SC_SOL && bnx2fc_log_fka)
  BNX2FC_MISC_DBG("Sending FKA from %pM to %pM.\n",
      eth_hdr->h_source, eth_hdr->h_dest);

 skb->dev = bnx2fc_from_ctlr(fip)->netdev;
 dev_queue_xmit(skb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* sel_fcf; } ;
struct qedf_ctx {TYPE_3__ ctlr; TYPE_2__* lport; int dbg_ctx; int data_src_addr; int wwpn; int mac; } ;
struct fip_wwn_desc {int fd_wwn; } ;
struct fip_vn_desc {int fd_mac; int fd_fc_id; int fd_wwpn; } ;
struct fip_mac_desc {int fd_mac; } ;
struct fip_header {scalar_t__ fip_subcode; int fip_dl_len; int fip_op; } ;
struct fip_desc {size_t fip_dlen; int fip_dtype; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct TYPE_5__ {int port_id; } ;
struct TYPE_4__ {int switch_name; int fcf_mac; } ;


 int DUMP_PREFIX_OFFSET ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 size_t FIP_BPW ;



 int FIP_OP_CTRL ;
 int FIP_OP_VLAN ;
 scalar_t__ FIP_SC_CLR_VLINK ;
 scalar_t__ FIP_SC_VL_NOTE ;
 int KERN_WARNING ;
 int QEDF_ERR (int *,char*,int ,int ,int ) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 int QEDF_LOG_DISC ;
 int QEDF_LOG_LL2 ;
 int __skb_pull (struct sk_buff*,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int fcoe_all_enode ;
 int fcoe_ctlr_recv (TYPE_3__*,struct sk_buff*) ;
 int get_unaligned_be64 (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int ntoh24 (int ) ;
 size_t ntohs (int ) ;
 int print_hex_dump (int ,char*,int ,int,int,scalar_t__,int ,int) ;
 int qedf_ctx_soft_reset (TYPE_2__*) ;
 scalar_t__ qedf_dump_frames ;
 int qedf_fcoe_process_vlan_resp (struct qedf_ctx*,struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

void qedf_fip_recv(struct qedf_ctx *qedf, struct sk_buff *skb)
{
 struct ethhdr *eth_hdr;
 struct fip_header *fiph;
 struct fip_desc *desc;
 struct fip_mac_desc *mp;
 struct fip_wwn_desc *wp;
 struct fip_vn_desc *vp;
 size_t rlen, dlen;
 u16 op;
 u8 sub;
 bool fcf_valid = 0;

 bool fabric_id_valid = 1;
 bool fc_wwpn_valid = 0;
 u64 switch_name;
 u16 vlan = 0;

 eth_hdr = (struct ethhdr *)skb_mac_header(skb);
 fiph = (struct fip_header *) ((void *)skb->data + 2 * ETH_ALEN + 2);
 op = ntohs(fiph->fip_op);
 sub = fiph->fip_subcode;

 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_LL2,
    "FIP frame received: skb=%p fiph=%p source=%pM destn=%pM op=%x sub=%x vlan=%04x",
    skb, fiph, eth_hdr->h_source, eth_hdr->h_dest, op,
    sub, vlan);
 if (qedf_dump_frames)
  print_hex_dump(KERN_WARNING, "fip ", DUMP_PREFIX_OFFSET, 16, 1,
      skb->data, skb->len, 0);

 if (!ether_addr_equal(eth_hdr->h_dest, qedf->mac) &&
     !ether_addr_equal(eth_hdr->h_dest, fcoe_all_enode) &&
  !ether_addr_equal(eth_hdr->h_dest, qedf->data_src_addr)) {
  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_LL2,
     "Dropping FIP type 0x%x pkt due to destination MAC mismatch dest_mac=%pM ctlr.dest_addr=%pM data_src_addr=%pM.\n",
     op, eth_hdr->h_dest, qedf->mac,
     qedf->data_src_addr);
  kfree_skb(skb);
  return;
 }


 if (op == FIP_OP_VLAN && sub == FIP_SC_VL_NOTE) {
  qedf_fcoe_process_vlan_resp(qedf, skb);
  kfree_skb(skb);
 } else if (op == FIP_OP_CTRL && sub == FIP_SC_CLR_VLINK) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC, "Clear virtual "
      "link received.\n");


  if (qedf->ctlr.sel_fcf == ((void*)0)) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "Dropping CVL since FCF has not been selected "
       "yet.");
   kfree_skb(skb);
   return;
  }





  rlen = ntohs(fiph->fip_dl_len) * FIP_BPW;
  desc = (struct fip_desc *)(fiph + 1);
  while (rlen >= sizeof(*desc)) {
   dlen = desc->fip_dlen * FIP_BPW;
   switch (desc->fip_dtype) {
   case 130:
    mp = (struct fip_mac_desc *)desc;
    QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
       "Switch fd_mac=%pM.\n", mp->fd_mac);
    if (ether_addr_equal(mp->fd_mac,
        qedf->ctlr.sel_fcf->fcf_mac))
     fcf_valid = 1;
    break;
   case 129:
    wp = (struct fip_wwn_desc *)desc;
    switch_name = get_unaligned_be64(&wp->fd_wwn);
    QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
       "Switch fd_wwn=%016llx fcf_switch_name=%016llx.\n",
       switch_name,
       qedf->ctlr.sel_fcf->switch_name);
    if (switch_name ==
        qedf->ctlr.sel_fcf->switch_name)
     fc_wwpn_valid = 1;
    break;
   case 128:
    fabric_id_valid = 0;
    vp = (struct fip_vn_desc *)desc;

    QEDF_ERR(&qedf->dbg_ctx,
      "CVL vx_port fd_fc_id=0x%x fd_mac=%pM fd_wwpn=%016llx.\n",
      ntoh24(vp->fd_fc_id), vp->fd_mac,
      get_unaligned_be64(&vp->fd_wwpn));



    if ((get_unaligned_be64(&vp->fd_wwpn) ==
     qedf->wwpn) ||
       (ntoh24(vp->fd_fc_id) ==
     qedf->lport->port_id) ||
       (ether_addr_equal(vp->fd_mac,
     qedf->data_src_addr))) {
     fabric_id_valid = 1;
    }
    break;
   default:

    break;
   }
   desc = (struct fip_desc *)((char *)desc + dlen);
   rlen -= dlen;
  }

  QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_DISC,
     "fcf_valid=%d fabric_id_valid=%d fc_wwpn_valid=%d.\n",
     fcf_valid, fabric_id_valid, fc_wwpn_valid);
  if (fcf_valid && fabric_id_valid && fc_wwpn_valid)
   qedf_ctx_soft_reset(qedf->lport);
  kfree_skb(skb);
 } else {

  __skb_pull(skb, ETH_HLEN);
  fcoe_ctlr_recv(&qedf->ctlr, skb);
 }
}

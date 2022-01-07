
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ u64 ;
struct sk_buff {void* protocol; scalar_t__ data; } ;
struct TYPE_11__ {int vlan_disc_reqs; } ;
struct fnic_stats {TYPE_10__ vlan_stats; } ;
struct fcoe_ctlr {int (* send ) (struct fcoe_ctlr*,struct sk_buff*) ;TYPE_7__* lp; int ctl_src_addr; } ;
struct fnic {int fip_timer; TYPE_1__* lport; int (* set_vlan ) (struct fnic*,int ) ;struct fnic_stats fnic_stats; struct fcoe_ctlr ctlr; } ;
struct TYPE_17__ {int fip_dlen; int fip_dtype; } ;
struct TYPE_19__ {int fd_wwn; TYPE_6__ fd_desc; } ;
struct TYPE_15__ {int fip_dlen; int fip_dtype; } ;
struct TYPE_16__ {int fd_mac; TYPE_4__ fd_desc; } ;
struct TYPE_20__ {TYPE_8__ wwnn; TYPE_5__ mac; } ;
struct TYPE_14__ {void* fip_dl_len; int fip_subcode; void* fip_op; int fip_ver; } ;
struct TYPE_13__ {void* h_proto; int * h_dest; int * h_source; } ;
struct fip_vlan {TYPE_9__ desc; TYPE_3__ fip; TYPE_2__ eth; } ;
struct TYPE_18__ {int wwnn; } ;
struct TYPE_12__ {int host; } ;


 int ETH_ALEN ;
 int ETH_P_FIP ;
 int FCOE_CTLR_FIPVLAN_TOV ;
 int FIP_BPW ;
 int FIP_DT_MAC ;
 int FIP_DT_NAME ;
 int FIP_OP_VLAN ;
 int FIP_SC_VL_REQ ;
 int FIP_VER ;
 int FIP_VER_ENCAPS (int ) ;
 int FNIC_FCS_DBG (int ,int ,char*) ;
 int KERN_INFO ;
 int atomic64_inc (int *) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int fcoe_all_fcfs ;
 int fnic_fcoe_reset_vlans (struct fnic*) ;
 void* htons (int) ;
 scalar_t__ jiffies ;
 int memcpy (int *,int ,int ) ;
 int memset (struct fip_vlan*,int ,int) ;
 int mod_timer (int *,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ printk_ratelimit () ;
 int put_unaligned_be64 (int ,int *) ;
 int round_jiffies (scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int stub1 (struct fnic*,int ) ;
 int stub2 (struct fcoe_ctlr*,struct sk_buff*) ;

__attribute__((used)) static void fnic_fcoe_send_vlan_req(struct fnic *fnic)
{
 struct fcoe_ctlr *fip = &fnic->ctlr;
 struct fnic_stats *fnic_stats = &fnic->fnic_stats;
 struct sk_buff *skb;
 char *eth_fr;
 int fr_len;
 struct fip_vlan *vlan;
 u64 vlan_tov;

 fnic_fcoe_reset_vlans(fnic);
 fnic->set_vlan(fnic, 0);

 if (printk_ratelimit())
  FNIC_FCS_DBG(KERN_INFO, fnic->lport->host,
     "Sending VLAN request...\n");

 skb = dev_alloc_skb(sizeof(struct fip_vlan));
 if (!skb)
  return;

 fr_len = sizeof(*vlan);
 eth_fr = (char *)skb->data;
 vlan = (struct fip_vlan *)eth_fr;

 memset(vlan, 0, sizeof(*vlan));
 memcpy(vlan->eth.h_source, fip->ctl_src_addr, ETH_ALEN);
 memcpy(vlan->eth.h_dest, fcoe_all_fcfs, ETH_ALEN);
 vlan->eth.h_proto = htons(ETH_P_FIP);

 vlan->fip.fip_ver = FIP_VER_ENCAPS(FIP_VER);
 vlan->fip.fip_op = htons(FIP_OP_VLAN);
 vlan->fip.fip_subcode = FIP_SC_VL_REQ;
 vlan->fip.fip_dl_len = htons(sizeof(vlan->desc) / FIP_BPW);

 vlan->desc.mac.fd_desc.fip_dtype = FIP_DT_MAC;
 vlan->desc.mac.fd_desc.fip_dlen = sizeof(vlan->desc.mac) / FIP_BPW;
 memcpy(&vlan->desc.mac.fd_mac, fip->ctl_src_addr, ETH_ALEN);

 vlan->desc.wwnn.fd_desc.fip_dtype = FIP_DT_NAME;
 vlan->desc.wwnn.fd_desc.fip_dlen = sizeof(vlan->desc.wwnn) / FIP_BPW;
 put_unaligned_be64(fip->lp->wwnn, &vlan->desc.wwnn.fd_wwn);
 atomic64_inc(&fnic_stats->vlan_stats.vlan_disc_reqs);

 skb_put(skb, sizeof(*vlan));
 skb->protocol = htons(ETH_P_FIP);
 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 fip->send(fip, skb);


 vlan_tov = jiffies + msecs_to_jiffies(FCOE_CTLR_FIPVLAN_TOV);
 mod_timer(&fnic->fip_timer, round_jiffies(vlan_tov));
}

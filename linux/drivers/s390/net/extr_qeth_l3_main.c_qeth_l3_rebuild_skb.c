
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u16 ;
struct sk_buff {int len; int pkt_type; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_14__ {char src_mac; int vlan_id; } ;
struct TYPE_15__ {TYPE_3__ rx; } ;
struct TYPE_16__ {int flags; int ext_flags; TYPE_4__ next_hop; int vlan_id; } ;
struct TYPE_17__ {TYPE_5__ l3; } ;
struct qeth_hdr {TYPE_6__ hdr; } ;
struct TYPE_13__ {scalar_t__ sniffer; } ;
struct qeth_card {TYPE_2__ options; TYPE_7__* dev; } ;
struct net_device {int dev_addr; } ;
struct af_iucv_trans_hdr {scalar_t__ magic; } ;
struct TYPE_19__ {int daddr; } ;
struct TYPE_18__ {TYPE_1__* header_ops; int dev_addr; int broadcast; } ;
struct TYPE_12__ {int (* create ) (struct sk_buff*,TYPE_7__*,int ,unsigned char*,char*,int ) ;} ;
struct TYPE_11__ {int daddr; } ;


 int ETH_ALEN ;
 int ETH_P_8021Q ;
 scalar_t__ ETH_P_AF_IUCV ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 int PACKET_OTHERHOST ;
 int QETH_CARD_STAT_INC (struct qeth_card*,int ) ;


 int QETH_HDR_CAST_MASK ;
 int QETH_HDR_EXT_INCLUDE_VLAN_TAG ;
 int QETH_HDR_EXT_SRC_MAC_ADDR ;
 int QETH_HDR_EXT_VLAN_FRAME ;
 int QETH_HDR_IPV6 ;
 int QETH_HDR_PASSTHRU ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,scalar_t__,int ,char*,int ) ;
 int ether_addr_copy (unsigned char*,int ) ;
 int htons (int ) ;
 int ip_eth_mc_map (int ,unsigned char*) ;
 TYPE_10__* ip_hdr (struct sk_buff*) ;
 int ipv6_eth_mc_map (int *,unsigned char*) ;
 TYPE_9__* ipv6_hdr (struct sk_buff*) ;
 int qeth_rx_csum (struct qeth_card*,struct sk_buff*,int) ;
 int rx_multicast ;
 int skb_reset_network_header (struct sk_buff*) ;
 int stub1 (struct sk_buff*,TYPE_7__*,int ,unsigned char*,char*,int ) ;
 int stub2 (struct sk_buff*,TYPE_7__*,int ,unsigned char*,char*,int ) ;

__attribute__((used)) static void qeth_l3_rebuild_skb(struct qeth_card *card, struct sk_buff *skb,
    struct qeth_hdr *hdr)
{
 struct af_iucv_trans_hdr *iucv = (struct af_iucv_trans_hdr *) skb->data;
 struct net_device *dev = skb->dev;

 if (IS_IQD(card) && iucv->magic == ETH_P_AF_IUCV) {
  dev_hard_header(skb, dev, ETH_P_AF_IUCV, dev->dev_addr,
    "FAKELL", skb->len);
  return;
 }

 if (!(hdr->hdr.l3.flags & QETH_HDR_PASSTHRU)) {
  u16 prot = (hdr->hdr.l3.flags & QETH_HDR_IPV6) ? ETH_P_IPV6 :
         ETH_P_IP;
  unsigned char tg_addr[ETH_ALEN];

  skb_reset_network_header(skb);
  switch (hdr->hdr.l3.flags & QETH_HDR_CAST_MASK) {
  case 128:
   if (prot == ETH_P_IP)
    ip_eth_mc_map(ip_hdr(skb)->daddr, tg_addr);
   else
    ipv6_eth_mc_map(&ipv6_hdr(skb)->daddr, tg_addr);
   QETH_CARD_STAT_INC(card, rx_multicast);
   break;
  case 129:
   ether_addr_copy(tg_addr, card->dev->broadcast);
   QETH_CARD_STAT_INC(card, rx_multicast);
   break;
  default:
   if (card->options.sniffer)
    skb->pkt_type = PACKET_OTHERHOST;
   ether_addr_copy(tg_addr, card->dev->dev_addr);
  }

  if (hdr->hdr.l3.ext_flags & QETH_HDR_EXT_SRC_MAC_ADDR)
   card->dev->header_ops->create(skb, card->dev, prot,
    tg_addr, &hdr->hdr.l3.next_hop.rx.src_mac,
    skb->len);
  else
   card->dev->header_ops->create(skb, card->dev, prot,
    tg_addr, "FAKELL", skb->len);
 }


 if (!card->options.sniffer &&
     (hdr->hdr.l3.ext_flags & (QETH_HDR_EXT_VLAN_FRAME |
          QETH_HDR_EXT_INCLUDE_VLAN_TAG))) {
  u16 tag = (hdr->hdr.l3.ext_flags & QETH_HDR_EXT_VLAN_FRAME) ?
    hdr->hdr.l3.vlan_id :
    hdr->hdr.l3.next_hop.rx.vlan_id;
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), tag);
 }

 qeth_rx_csum(card, skb, hdr->hdr.l3.ext_flags);
}

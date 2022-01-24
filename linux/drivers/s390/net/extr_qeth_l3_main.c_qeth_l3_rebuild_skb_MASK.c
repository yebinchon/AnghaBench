#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  pkt_type; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_14__ {char src_mac; int /*<<< orphan*/  vlan_id; } ;
struct TYPE_15__ {TYPE_3__ rx; } ;
struct TYPE_16__ {int flags; int ext_flags; TYPE_4__ next_hop; int /*<<< orphan*/  vlan_id; } ;
struct TYPE_17__ {TYPE_5__ l3; } ;
struct qeth_hdr {TYPE_6__ hdr; } ;
struct TYPE_13__ {scalar_t__ sniffer; } ;
struct qeth_card {TYPE_2__ options; TYPE_7__* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct af_iucv_trans_hdr {scalar_t__ magic; } ;
struct TYPE_19__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_18__ {TYPE_1__* header_ops; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  broadcast; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* create ) (struct sk_buff*,TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int /*<<< orphan*/ ) ; 
#define  QETH_CAST_BROADCAST 129 
#define  QETH_CAST_MULTICAST 128 
 int QETH_HDR_CAST_MASK ; 
 int QETH_HDR_EXT_INCLUDE_VLAN_TAG ; 
 int QETH_HDR_EXT_SRC_MAC_ADDR ; 
 int QETH_HDR_EXT_VLAN_FRAME ; 
 int QETH_HDR_IPV6 ; 
 int QETH_HDR_PASSTHRU ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*) ; 
 TYPE_10__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*) ; 
 TYPE_9__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  rx_multicast ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct qeth_card *card, struct sk_buff *skb,
				struct qeth_hdr *hdr)
{
	struct af_iucv_trans_hdr *iucv = (struct af_iucv_trans_hdr *) skb->data;
	struct net_device *dev = skb->dev;

	if (FUNC0(card) && iucv->magic == ETH_P_AF_IUCV) {
		FUNC3(skb, dev, ETH_P_AF_IUCV, dev->dev_addr,
				"FAKELL", skb->len);
		return;
	}

	if (!(hdr->hdr.l3.flags & QETH_HDR_PASSTHRU)) {
		u16 prot = (hdr->hdr.l3.flags & QETH_HDR_IPV6) ? ETH_P_IPV6 :
								 ETH_P_IP;
		unsigned char tg_addr[ETH_ALEN];

		FUNC11(skb);
		switch (hdr->hdr.l3.flags & QETH_HDR_CAST_MASK) {
		case QETH_CAST_MULTICAST:
			if (prot == ETH_P_IP)
				FUNC6(FUNC7(skb)->daddr, tg_addr);
			else
				FUNC8(&FUNC9(skb)->daddr, tg_addr);
			FUNC1(card, rx_multicast);
			break;
		case QETH_CAST_BROADCAST:
			FUNC4(tg_addr, card->dev->broadcast);
			FUNC1(card, rx_multicast);
			break;
		default:
			if (card->options.sniffer)
				skb->pkt_type = PACKET_OTHERHOST;
			FUNC4(tg_addr, card->dev->dev_addr);
		}

		if (hdr->hdr.l3.ext_flags & QETH_HDR_EXT_SRC_MAC_ADDR)
			card->dev->header_ops->create(skb, card->dev, prot,
				tg_addr, &hdr->hdr.l3.next_hop.rx.src_mac,
				skb->len);
		else
			card->dev->header_ops->create(skb, card->dev, prot,
				tg_addr, "FAKELL", skb->len);
	}

	/* copy VLAN tag from hdr into skb */
	if (!card->options.sniffer &&
	    (hdr->hdr.l3.ext_flags & (QETH_HDR_EXT_VLAN_FRAME |
				      QETH_HDR_EXT_INCLUDE_VLAN_TAG))) {
		u16 tag = (hdr->hdr.l3.ext_flags & QETH_HDR_EXT_VLAN_FRAME) ?
				hdr->hdr.l3.vlan_id :
				hdr->hdr.l3.next_hop.rx.vlan_id;
		FUNC2(skb, FUNC5(ETH_P_8021Q), tag);
	}

	FUNC10(card, skb, hdr->hdr.l3.ext_flags);
}
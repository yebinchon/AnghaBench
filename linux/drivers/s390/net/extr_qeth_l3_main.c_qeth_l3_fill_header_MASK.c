#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vlan_ethhdr {scalar_t__ h_vlan_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ ip_summed; } ;
struct rtable {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * s6_addr32; scalar_t__* s6_addr16; } ;
struct rt6_info {TYPE_6__ rt6i_gateway; } ;
struct qeth_qdio_out_q {struct qeth_card* card; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {TYPE_6__ ipv6_addr; TYPE_1__ ipv4; } ;
struct qeth_hdr_layer3 {unsigned int length; int flags; TYPE_2__ next_hop; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ext_flags; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {struct qeth_hdr_layer3 l3; } ;
struct qeth_hdr {TYPE_3__ hdr; } ;
struct qeth_card {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_14__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_12__ {TYPE_6__ daddr; } ;
struct TYPE_11__ {int /*<<< orphan*/  destUserID; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int ETH_P_8021Q ; 
 int ETH_P_AF_IUCV ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int QETH_CAST_UNICAST ; 
 int /*<<< orphan*/  QETH_HDR_EXT_CSUM_HDR_REQ ; 
 int /*<<< orphan*/  QETH_HDR_EXT_INCLUDE_VLAN_TAG ; 
 int /*<<< orphan*/  QETH_HDR_EXT_VLAN_FRAME ; 
 int QETH_HDR_IPV6 ; 
 int QETH_HDR_PASSTHRU ; 
 int /*<<< orphan*/  QETH_HEADER_TYPE_L3_TSO ; 
 int /*<<< orphan*/  QETH_HEADER_TYPE_LAYER3 ; 
 scalar_t__ QETH_IQD_MCAST_TXQ ; 
 int RTN_UNICAST ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_7__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 TYPE_5__* FUNC4 (struct sk_buff*) ; 
 TYPE_4__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (struct sk_buff*,struct dst_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct rtable*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 struct vlan_ethhdr* FUNC19 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC20(struct qeth_qdio_out_q *queue,
				struct qeth_hdr *hdr, struct sk_buff *skb,
				int ipv, unsigned int data_len)
{
	struct qeth_hdr_layer3 *l3_hdr = &hdr->hdr.l3;
	struct vlan_ethhdr *veth = FUNC19(skb);
	struct qeth_card *card = queue->card;
	struct dst_entry *dst;
	int cast_type;

	hdr->hdr.l3.length = data_len;

	if (FUNC16(skb)) {
		hdr->hdr.l3.id = QETH_HEADER_TYPE_L3_TSO;
	} else {
		hdr->hdr.l3.id = QETH_HEADER_TYPE_LAYER3;

		if (skb->protocol == FUNC1(ETH_P_AF_IUCV)) {
			l3_hdr->flags = QETH_HDR_IPV6 | QETH_CAST_UNICAST;
			l3_hdr->next_hop.ipv6_addr.s6_addr16[0] = FUNC1(0xfe80);
			FUNC6(&l3_hdr->next_hop.ipv6_addr.s6_addr32[2],
			       FUNC5(skb)->destUserID, 8);
			return;
		}

		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			FUNC11(skb, &hdr->hdr.l3.ext_flags, ipv);
			/* some HW requires combined L3+L4 csum offload: */
			if (ipv == 4)
				hdr->hdr.l3.ext_flags |= QETH_HDR_EXT_CSUM_HDR_REQ;
		}
	}

	if (ipv == 4 || FUNC0(card)) {
		/* NETIF_F_HW_VLAN_CTAG_TX */
		if (FUNC18(skb)) {
			hdr->hdr.l3.ext_flags |= QETH_HDR_EXT_VLAN_FRAME;
			hdr->hdr.l3.vlan_id = FUNC17(skb);
		}
	} else if (veth->h_vlan_proto == FUNC1(ETH_P_8021Q)) {
		hdr->hdr.l3.ext_flags |= QETH_HDR_EXT_INCLUDE_VLAN_TAG;
		hdr->hdr.l3.vlan_id = FUNC7(veth->h_vlan_TCI);
	}

	FUNC12();
	dst = FUNC8(skb, ipv);

	if (FUNC0(card) && FUNC15(skb) != QETH_IQD_MCAST_TXQ)
		cast_type = RTN_UNICAST;
	else
		cast_type = FUNC10(skb, dst, ipv);
	l3_hdr->flags |= FUNC9(cast_type);

	if (ipv == 4) {
		struct rtable *rt = (struct rtable *) dst;

		*((__be32 *) &hdr->hdr.l3.next_hop.ipv4.addr) = (rt) ?
				FUNC14(rt, FUNC2(skb)->daddr) :
				FUNC2(skb)->daddr;
	} else if (ipv == 6) {
		struct rt6_info *rt = (struct rt6_info *) dst;

		if (rt && !FUNC3(&rt->rt6i_gateway))
			l3_hdr->next_hop.ipv6_addr = rt->rt6i_gateway;
		else
			l3_hdr->next_hop.ipv6_addr = FUNC4(skb)->daddr;

		hdr->hdr.l3.flags |= QETH_HDR_IPV6;
		if (!FUNC0(card))
			hdr->hdr.l3.flags |= QETH_HDR_PASSTHRU;
	} else {
		/* OSA only: */
		l3_hdr->flags |= QETH_HDR_PASSTHRU;
	}
	FUNC13();
}
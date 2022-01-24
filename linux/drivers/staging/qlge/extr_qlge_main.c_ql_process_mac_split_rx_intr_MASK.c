#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct rx_ring {int /*<<< orphan*/  napi; int /*<<< orphan*/  cq_id; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_dropped; } ;
struct ql_adapter {struct net_device* ndev; int /*<<< orphan*/  flags; } ;
struct net_device {scalar_t__ mtu; int features; } ;
struct iphdr {int frag_off; } ;
struct ib_mac_iocb_rsp {int flags2; int flags1; int flags3; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 scalar_t__ ETH_HLEN ; 
 int ETH_P_8021Q ; 
 int IB_MAC_CSUM_ERR_MASK ; 
 int IB_MAC_IOCB_RSP_ERR_MASK ; 
 int IB_MAC_IOCB_RSP_M_HASH ; 
 int IB_MAC_IOCB_RSP_M_MASK ; 
 int IB_MAC_IOCB_RSP_M_PROM ; 
 int IB_MAC_IOCB_RSP_M_REG ; 
 int IB_MAC_IOCB_RSP_P ; 
 int IB_MAC_IOCB_RSP_T ; 
 int IB_MAC_IOCB_RSP_U ; 
 int IB_MAC_IOCB_RSP_V4 ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (struct ib_mac_iocb_rsp*) ; 
 int /*<<< orphan*/  QL_SELFTEST ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct sk_buff* FUNC9 (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*,int,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct ql_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct ql_adapter *qdev,
				   struct rx_ring *rx_ring,
				   struct ib_mac_iocb_rsp *ib_mac_rsp,
				   u16 vlan_id)
{
	struct net_device *ndev = qdev->ndev;
	struct sk_buff *skb = NULL;

	FUNC0(ib_mac_rsp);

	skb = FUNC9(qdev, rx_ring, ib_mac_rsp);
	if (FUNC15(!skb)) {
		FUNC6(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "No skb available, drop packet.\n");
		rx_ring->rx_dropped++;
		return;
	}

	/* Frame error, so drop the packet. */
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
		FUNC10(qdev, ib_mac_rsp->flags2, rx_ring);
		FUNC2(skb);
		return;
	}

	/* The max framesize filter on this chip is set higher than
	 * MTU since FCoE uses 2k frames.
	 */
	if (skb->len > ndev->mtu + ETH_HLEN) {
		FUNC2(skb);
		rx_ring->rx_dropped++;
		return;
	}

	/* loopback self test for ethtool */
	if (FUNC14(QL_SELFTEST, &qdev->flags)) {
		FUNC11(qdev, skb);
		FUNC2(skb);
		return;
	}

	FUNC8(skb->data);
	if (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) {
		FUNC6(qdev, rx_status, KERN_DEBUG, qdev->ndev, "%s Multicast.\n",
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_HASH ? "Hash" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_REG ? "Registered" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_PROM ? "Promiscuous" : "");
		rx_ring->rx_multicast++;
	}
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_P) {
		FUNC6(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "Promiscuous Packet.\n");
	}

	skb->protocol = FUNC3(skb, ndev);
	FUNC12(skb);

	/* If rx checksum is on, and there are no
	 * csum or frame errors.
	 */
	if ((ndev->features & NETIF_F_RXCSUM) &&
		!(ib_mac_rsp->flags1 & IB_MAC_CSUM_ERR_MASK)) {
		/* TCP frame. */
		if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_T) {
			FUNC6(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "TCP checksum done!\n");
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		} else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
		/* Unfragmented ipv4 UDP frame. */
			struct iphdr *iph = (struct iphdr *) skb->data;
			if (!(iph->frag_off &
				FUNC4(IP_MF|IP_OFFSET))) {
				skb->ip_summed = CHECKSUM_UNNECESSARY;
				FUNC6(qdev, rx_status, KERN_DEBUG, qdev->ndev,
					     "TCP checksum done!\n");
			}
		}
	}

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += skb->len;
	FUNC13(skb, rx_ring->cq_id);
	if (vlan_id != 0xffff)
		FUNC1(skb, FUNC4(ETH_P_8021Q), vlan_id);
	if (skb->ip_summed == CHECKSUM_UNNECESSARY)
		FUNC5(&rx_ring->napi, skb);
	else
		FUNC7(skb);
}
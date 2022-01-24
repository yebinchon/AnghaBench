#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  truesize; int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; } ;
struct napi_struct {int /*<<< orphan*/  dev; } ;
struct rx_ring {int /*<<< orphan*/  cq_id; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; struct napi_struct napi; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct ib_mac_iocb_rsp {int flags2; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page; int /*<<< orphan*/  va; } ;
struct TYPE_5__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IB_MAC_IOCB_RSP_ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ql_adapter*,int,struct rx_ring*) ; 
 struct bq_desc* FUNC9 (struct ql_adapter*,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct ql_adapter *qdev,
					struct rx_ring *rx_ring,
					struct ib_mac_iocb_rsp *ib_mac_rsp,
					u32 length,
					u16 vlan_id)
{
	struct sk_buff *skb;
	struct bq_desc *lbq_desc = FUNC9(qdev, rx_ring);
	struct napi_struct *napi = &rx_ring->napi;

	/* Frame error, so drop the packet. */
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
		FUNC8(qdev, ib_mac_rsp->flags2, rx_ring);
		FUNC7(lbq_desc->p.pg_chunk.page);
		return;
	}
	napi->dev = qdev->ndev;

	skb = FUNC3(napi);
	if (!skb) {
		FUNC5(qdev, drv, qdev->ndev,
			  "Couldn't get an skb, exiting.\n");
		rx_ring->rx_dropped++;
		FUNC7(lbq_desc->p.pg_chunk.page);
		return;
	}
	FUNC6(lbq_desc->p.pg_chunk.va);
	FUNC0(skb, FUNC11(skb)->nr_frags,
			     lbq_desc->p.pg_chunk.page,
			     lbq_desc->p.pg_chunk.offset,
			     length);

	skb->len += length;
	skb->data_len += length;
	skb->truesize += length;
	FUNC11(skb)->nr_frags++;

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += length;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC10(skb, rx_ring->cq_id);
	if (vlan_id != 0xffff)
		FUNC1(skb, FUNC2(ETH_P_8021Q), vlan_id);
	FUNC4(napi);
}
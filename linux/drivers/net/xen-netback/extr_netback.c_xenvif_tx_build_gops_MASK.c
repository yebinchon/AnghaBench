#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_16__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  txreq ;
struct TYPE_21__ {scalar_t__ req_cons; TYPE_9__* sring; } ;
struct xenvif_queue {scalar_t__ remaining_credit; size_t* pending_ring; struct gnttab_map_grant_ref* tx_map_ops; struct gnttab_map_grant_ref* tx_copy_ops; TYPE_16__ tx; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  pending_cons; TYPE_8__* pending_tx_info; TYPE_10__* vif; } ;
struct xen_netif_tx_request {scalar_t__ size; int flags; scalar_t__ offset; int /*<<< orphan*/  gref; } ;
struct TYPE_23__ {int type; scalar_t__ value; } ;
struct TYPE_22__ {int /*<<< orphan*/  addr; } ;
struct TYPE_24__ {TYPE_2__ hash; TYPE_1__ mcast; } ;
struct xen_netif_extra_info {TYPE_3__ u; scalar_t__ type; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int /*<<< orphan*/  gmfn; } ;
struct TYPE_28__ {int offset; int /*<<< orphan*/  domid; TYPE_6__ u; } ;
struct TYPE_25__ {int /*<<< orphan*/  ref; } ;
struct TYPE_26__ {int offset; int /*<<< orphan*/  domid; TYPE_4__ u; } ;
struct gnttab_map_grant_ref {unsigned int len; int /*<<< orphan*/  flags; TYPE_7__ dest; TYPE_5__ source; } ;
typedef  size_t pending_ring_idx_t ;
typedef  int /*<<< orphan*/  extras ;
typedef  enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
struct TYPE_30__ {scalar_t__ req_prod; } ;
struct TYPE_29__ {unsigned int extra_count; int /*<<< orphan*/  req; } ;
struct TYPE_20__ {size_t pending_idx; } ;
struct TYPE_19__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_18__ {int /*<<< orphan*/  domid; int /*<<< orphan*/  dev; } ;
typedef  void* RING_IDX ;

/* Variables and functions */
 unsigned int FUNC0 (struct gnttab_map_grant_ref*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  GNTCOPY_source_gref ; 
 size_t INVALID_PENDING_IDX ; 
 unsigned int MAX_SKB_FRAGS ; 
 int PKT_HASH_TYPE_L3 ; 
 int PKT_HASH_TYPE_L4 ; 
 int PKT_HASH_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*,void*,struct xen_netif_tx_request*) ; 
 int FUNC3 (TYPE_16__*) ; 
 TYPE_15__* FUNC4 (struct sk_buff*) ; 
 unsigned int XEN_NETBACK_TX_COPY_LEN ; 
 int XEN_NETBK_LEGACY_SLOTS_MAX ; 
 int XEN_NETIF_EXTRA_TYPE_GSO ; 
 int XEN_NETIF_EXTRA_TYPE_HASH ; 
 int /*<<< orphan*/  XEN_NETIF_EXTRA_TYPE_MAX ; 
 int XEN_NETIF_EXTRA_TYPE_MCAST_ADD ; 
 int XEN_NETIF_EXTRA_TYPE_MCAST_DEL ; 
 int /*<<< orphan*/  XEN_NETIF_RSP_ERROR ; 
 int /*<<< orphan*/  XEN_NETIF_RSP_OKAY ; 
 scalar_t__ XEN_NETIF_TX_RING_SIZE ; 
 int XEN_NETTXF_extra_info ; 
 int XEN_PAGE_MASK ; 
 scalar_t__ XEN_PAGE_SIZE ; 
#define  _XEN_NETIF_CTRL_HASH_TYPE_IPV4 131 
#define  _XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP 130 
#define  _XEN_NETIF_CTRL_HASH_TYPE_IPV6 129 
#define  _XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP 128 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct xen_netif_tx_request*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xen_netif_extra_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 size_t FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 TYPE_14__* FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct xenvif_queue*,scalar_t__) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC25 (unsigned int) ; 
 int FUNC26 (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,struct xen_netif_tx_request*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_10__*) ; 
 int FUNC28 (struct xenvif_queue*,struct xen_netif_extra_info*,unsigned int*,int) ; 
 struct gnttab_map_grant_ref* FUNC29 (struct xenvif_queue*,struct sk_buff*,struct xen_netif_tx_request*,struct gnttab_map_grant_ref*,unsigned int,struct sk_buff*) ; 
 int FUNC30 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (TYPE_10__*,struct sk_buff*,struct xen_netif_extra_info*) ; 
 int /*<<< orphan*/  FUNC33 (struct xenvif_queue*,size_t,struct xen_netif_tx_request*,unsigned int,struct gnttab_map_grant_ref*) ; 
 int /*<<< orphan*/  FUNC34 (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,void*) ; 

__attribute__((used)) static void FUNC35(struct xenvif_queue *queue,
				     int budget,
				     unsigned *copy_ops,
				     unsigned *map_ops)
{
	struct gnttab_map_grant_ref *gop = queue->tx_map_ops;
	struct sk_buff *skb, *nskb;
	int ret;
	unsigned int frag_overflow;

	while (FUNC19(&queue->tx_queue) < budget) {
		struct xen_netif_tx_request txreq;
		struct xen_netif_tx_request txfrags[XEN_NETBK_LEGACY_SLOTS_MAX];
		struct xen_netif_extra_info extras[XEN_NETIF_EXTRA_TYPE_MAX-1];
		unsigned int extra_count;
		u16 pending_idx;
		RING_IDX idx;
		int work_to_do;
		unsigned int data_len;
		pending_ring_idx_t index;

		if (queue->tx.sring->req_prod - queue->tx.req_cons >
		    XEN_NETIF_TX_RING_SIZE) {
			FUNC14(queue->vif->dev,
				   "Impossible number of requests. "
				   "req_prod %d, req_cons %d, size %ld\n",
				   queue->tx.sring->req_prod, queue->tx.req_cons,
				   XEN_NETIF_TX_RING_SIZE);
			FUNC27(queue->vif);
			break;
		}

		work_to_do = FUNC3(&queue->tx);
		if (!work_to_do)
			break;

		idx = queue->tx.req_cons;
		FUNC18(); /* Ensure that we see the request before we copy it. */
		FUNC2(&queue->tx, idx, &txreq);

		/* Credit-based scheduling. */
		if (txreq.size > queue->remaining_credit &&
		    FUNC22(queue, txreq.size))
			break;

		queue->remaining_credit -= txreq.size;

		work_to_do--;
		queue->tx.req_cons = ++idx;

		FUNC11(extras, 0, sizeof(extras));
		extra_count = 0;
		if (txreq.flags & XEN_NETTXF_extra_info) {
			work_to_do = FUNC28(queue, extras,
						       &extra_count,
						       work_to_do);
			idx = queue->tx.req_cons;
			if (FUNC23(work_to_do < 0))
				break;
		}

		if (extras[XEN_NETIF_EXTRA_TYPE_MCAST_ADD - 1].type) {
			struct xen_netif_extra_info *extra;

			extra = &extras[XEN_NETIF_EXTRA_TYPE_MCAST_ADD - 1];
			ret = FUNC30(queue->vif, extra->u.mcast.addr);

			FUNC9(queue, &txreq, extra_count,
					 (ret == 0) ?
					 XEN_NETIF_RSP_OKAY :
					 XEN_NETIF_RSP_ERROR);
			FUNC17(queue);
			continue;
		}

		if (extras[XEN_NETIF_EXTRA_TYPE_MCAST_DEL - 1].type) {
			struct xen_netif_extra_info *extra;

			extra = &extras[XEN_NETIF_EXTRA_TYPE_MCAST_DEL - 1];
			FUNC31(queue->vif, extra->u.mcast.addr);

			FUNC9(queue, &txreq, extra_count,
					 XEN_NETIF_RSP_OKAY);
			FUNC17(queue);
			continue;
		}

		ret = FUNC26(queue, &txreq, extra_count,
					    txfrags, work_to_do);
		if (FUNC23(ret < 0))
			break;

		idx += ret;

		if (FUNC23(txreq.size < ETH_HLEN)) {
			FUNC13(queue->vif->dev,
				   "Bad packet size: %d\n", txreq.size);
			FUNC34(queue, &txreq, extra_count, idx);
			break;
		}

		/* No crossing a page as the payload mustn't fragment. */
		if (FUNC23((txreq.offset + txreq.size) > XEN_PAGE_SIZE)) {
			FUNC14(queue->vif->dev,
				   "txreq.offset: %u, size: %u, end: %lu\n",
				   txreq.offset, txreq.size,
				   (unsigned long)(txreq.offset&~XEN_PAGE_MASK) + txreq.size);
			FUNC27(queue->vif);
			break;
		}

		index = FUNC16(queue->pending_cons);
		pending_idx = queue->pending_ring[index];

		data_len = (txreq.size > XEN_NETBACK_TX_COPY_LEN &&
			    ret < XEN_NETBK_LEGACY_SLOTS_MAX) ?
			XEN_NETBACK_TX_COPY_LEN : txreq.size;

		skb = FUNC25(data_len);
		if (FUNC23(skb == NULL)) {
			FUNC13(queue->vif->dev,
				   "Can't allocate a skb in start_xmit.\n");
			FUNC34(queue, &txreq, extra_count, idx);
			break;
		}

		FUNC21(skb)->nr_frags = ret;
		if (data_len < txreq.size)
			FUNC21(skb)->nr_frags++;
		/* At this point shinfo->nr_frags is in fact the number of
		 * slots, which can be as large as XEN_NETBK_LEGACY_SLOTS_MAX.
		 */
		frag_overflow = 0;
		nskb = NULL;
		if (FUNC21(skb)->nr_frags > MAX_SKB_FRAGS) {
			frag_overflow = FUNC21(skb)->nr_frags - MAX_SKB_FRAGS;
			FUNC1(frag_overflow > MAX_SKB_FRAGS);
			FUNC21(skb)->nr_frags = MAX_SKB_FRAGS;
			nskb = FUNC25(0);
			if (FUNC23(nskb == NULL)) {
				FUNC21(skb)->nr_frags = 0;
				FUNC8(skb);
				FUNC34(queue, &txreq, extra_count, idx);
				if (FUNC12())
					FUNC14(queue->vif->dev,
						   "Can't allocate the frag_list skb.\n");
				break;
			}
		}

		if (extras[XEN_NETIF_EXTRA_TYPE_GSO - 1].type) {
			struct xen_netif_extra_info *gso;
			gso = &extras[XEN_NETIF_EXTRA_TYPE_GSO - 1];

			if (FUNC32(queue->vif, skb, gso)) {
				/* Failure in xenvif_set_skb_gso is fatal. */
				FUNC21(skb)->nr_frags = 0;
				FUNC8(skb);
				FUNC8(nskb);
				break;
			}
		}

		if (extras[XEN_NETIF_EXTRA_TYPE_HASH - 1].type) {
			struct xen_netif_extra_info *extra;
			enum pkt_hash_types type = PKT_HASH_TYPE_NONE;

			extra = &extras[XEN_NETIF_EXTRA_TYPE_HASH - 1];

			switch (extra->u.hash.type) {
			case _XEN_NETIF_CTRL_HASH_TYPE_IPV4:
			case _XEN_NETIF_CTRL_HASH_TYPE_IPV6:
				type = PKT_HASH_TYPE_L3;
				break;

			case _XEN_NETIF_CTRL_HASH_TYPE_IPV4_TCP:
			case _XEN_NETIF_CTRL_HASH_TYPE_IPV6_TCP:
				type = PKT_HASH_TYPE_L4;
				break;

			default:
				break;
			}

			if (type != PKT_HASH_TYPE_NONE)
				FUNC20(skb,
					     *(u32 *)extra->u.hash.value,
					     type);
		}

		FUNC4(skb)->pending_idx = pending_idx;

		FUNC5(skb, data_len);
		queue->tx_copy_ops[*copy_ops].source.u.ref = txreq.gref;
		queue->tx_copy_ops[*copy_ops].source.domid = queue->vif->domid;
		queue->tx_copy_ops[*copy_ops].source.offset = txreq.offset;

		queue->tx_copy_ops[*copy_ops].dest.u.gmfn =
			FUNC24(skb->data);
		queue->tx_copy_ops[*copy_ops].dest.domid = DOMID_SELF;
		queue->tx_copy_ops[*copy_ops].dest.offset =
			FUNC15(skb->data) & ~XEN_PAGE_MASK;

		queue->tx_copy_ops[*copy_ops].len = data_len;
		queue->tx_copy_ops[*copy_ops].flags = GNTCOPY_source_gref;

		(*copy_ops)++;

		if (data_len < txreq.size) {
			FUNC7(&FUNC21(skb)->frags[0],
					     pending_idx);
			FUNC33(queue, pending_idx, &txreq,
						extra_count, gop);
			gop++;
		} else {
			FUNC7(&FUNC21(skb)->frags[0],
					     INVALID_PENDING_IDX);
			FUNC10(&queue->pending_tx_info[pending_idx].req,
			       &txreq, sizeof(txreq));
			queue->pending_tx_info[pending_idx].extra_count =
				extra_count;
		}

		queue->pending_cons++;

		gop = FUNC29(queue, skb, txfrags, gop,
				          frag_overflow, nskb);

		FUNC6(&queue->tx_queue, skb);

		queue->tx.req_cons = idx;

		if (((gop-queue->tx_map_ops) >= FUNC0(queue->tx_map_ops)) ||
		    (*copy_ops >= FUNC0(queue->tx_copy_ops)))
			break;
	}

	(*map_ops) = gop - queue->tx_map_ops;
	return;
}
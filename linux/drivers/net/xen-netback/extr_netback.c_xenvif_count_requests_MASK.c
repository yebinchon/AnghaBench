#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ req_cons; } ;
struct xenvif_queue {TYPE_1__* vif; TYPE_2__ tx; } ;
struct xen_netif_tx_request {int flags; scalar_t__ size; int offset; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,struct xen_netif_tx_request*) ; 
 int XEN_NETBK_LEGACY_SLOTS_MAX ; 
 int XEN_NETTXF_more_data ; 
 scalar_t__ XEN_PAGE_SIZE ; 
 int fatal_skb_slots ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif_queue*,struct xen_netif_tx_request*,unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct xenvif_queue *queue,
				 struct xen_netif_tx_request *first,
				 unsigned int extra_count,
				 struct xen_netif_tx_request *txp,
				 int work_to_do)
{
	RING_IDX cons = queue->tx.req_cons;
	int slots = 0;
	int drop_err = 0;
	int more_data;

	if (!(first->flags & XEN_NETTXF_more_data))
		return 0;

	do {
		struct xen_netif_tx_request dropped_tx = { 0 };

		if (slots >= work_to_do) {
			FUNC3(queue->vif->dev,
				   "Asked for %d slots but exceeds this limit\n",
				   work_to_do);
			FUNC5(queue->vif);
			return -ENODATA;
		}

		/* This guest is really using too many slots and
		 * considered malicious.
		 */
		if (FUNC4(slots >= fatal_skb_slots)) {
			FUNC3(queue->vif->dev,
				   "Malicious frontend using %d slots, threshold %u\n",
				   slots, fatal_skb_slots);
			FUNC5(queue->vif);
			return -E2BIG;
		}

		/* Xen network protocol had implicit dependency on
		 * MAX_SKB_FRAGS. XEN_NETBK_LEGACY_SLOTS_MAX is set to
		 * the historical MAX_SKB_FRAGS value 18 to honor the
		 * same behavior as before. Any packet using more than
		 * 18 slots but less than fatal_skb_slots slots is
		 * dropped
		 */
		if (!drop_err && slots >= XEN_NETBK_LEGACY_SLOTS_MAX) {
			if (FUNC1())
				FUNC2(queue->vif->dev,
					   "Too many slots (%d) exceeding limit (%d), dropping packet\n",
					   slots, XEN_NETBK_LEGACY_SLOTS_MAX);
			drop_err = -E2BIG;
		}

		if (drop_err)
			txp = &dropped_tx;

		FUNC0(&queue->tx, cons + slots, txp);

		/* If the guest submitted a frame >= 64 KiB then
		 * first->size overflowed and following slots will
		 * appear to be larger than the frame.
		 *
		 * This cannot be fatal error as there are buggy
		 * frontends that do this.
		 *
		 * Consume all slots and drop the packet.
		 */
		if (!drop_err && txp->size > first->size) {
			if (FUNC1())
				FUNC2(queue->vif->dev,
					   "Invalid tx request, slot size %u > remaining size %u\n",
					   txp->size, first->size);
			drop_err = -EIO;
		}

		first->size -= txp->size;
		slots++;

		if (FUNC4((txp->offset + txp->size) > XEN_PAGE_SIZE)) {
			FUNC3(queue->vif->dev, "Cross page boundary, txp->offset: %u, size: %u\n",
				 txp->offset, txp->size);
			FUNC5(queue->vif);
			return -EINVAL;
		}

		more_data = txp->flags & XEN_NETTXF_more_data;

		if (!drop_err)
			txp++;

	} while (more_data);

	if (drop_err) {
		FUNC6(queue, first, extra_count, cons + slots);
		return drop_err;
	}

	return slots;
}
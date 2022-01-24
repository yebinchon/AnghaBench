#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271_tx_hw_descr {int id; } ;
struct wl1271 {scalar_t__ aggr_buf_size; scalar_t__ tx_blocks_available; scalar_t__ tx_allocated_blocks; TYPE_1__* links; int /*<<< orphan*/  links_map; int /*<<< orphan*/ * tx_allocated_pkts; int /*<<< orphan*/  flags; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  allocated_pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  WL1271_FLAG_REINIT_TX_WDOG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct wl1271_tx_hw_descr* FUNC1 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 
 scalar_t__ FUNC9 (struct wl1271*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,struct wl1271_tx_hw_descr*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			      struct sk_buff *skb, u32 extra, u32 buf_offset,
			      u8 hlid, bool is_gem)
{
	struct wl1271_tx_hw_descr *desc;
	u32 total_len = skb->len + sizeof(struct wl1271_tx_hw_descr) + extra;
	u32 total_blocks;
	int id, ret = -EBUSY, ac;
	u32 spare_blocks;

	if (buf_offset + total_len > wl->aggr_buf_size)
		return -EAGAIN;

	spare_blocks = FUNC10(wl, is_gem);

	/* allocate free identifier for the packet */
	id = FUNC4(wl, skb);
	if (id < 0)
		return id;

	total_blocks = FUNC9(wl, total_len, spare_blocks);

	if (total_blocks <= wl->tx_blocks_available) {
		desc = FUNC1(skb, total_len - skb->len);

		FUNC11(wl, desc, total_blocks,
					     spare_blocks);

		desc->id = id;

		wl->tx_blocks_available -= total_blocks;
		wl->tx_allocated_blocks += total_blocks;

		/*
		 * If the FW was empty before, arm the Tx watchdog. Also do
		 * this on the first Tx after resume, as we always cancel the
		 * watchdog on suspend.
		 */
		if (wl->tx_allocated_blocks == total_blocks ||
		    FUNC2(WL1271_FLAG_REINIT_TX_WDOG, &wl->flags))
			FUNC8(wl);

		ac = FUNC7(FUNC0(skb));
		wl->tx_allocated_pkts[ac]++;

		if (FUNC3(hlid, wl->links_map))
			wl->links[hlid].allocated_pkts++;

		ret = 0;

		FUNC5(DEBUG_TX,
			     "tx_allocate: size: %d, blocks: %d, id: %d",
			     total_len, total_blocks, id);
	} else {
		FUNC6(wl, id);
	}

	return ret;
}
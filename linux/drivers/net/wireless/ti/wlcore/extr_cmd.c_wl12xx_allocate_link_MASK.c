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
typedef  size_t u8 ;
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  total_freed_pkts; int /*<<< orphan*/  links_map; } ;
struct wl1271 {size_t num_links; int /*<<< orphan*/  active_link_count; TYPE_3__* links; TYPE_2__* fw_status; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  links_map; int /*<<< orphan*/ * session_ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  total_freed_pkts; struct wl12xx_vif* wlvif; int /*<<< orphan*/  prev_freed_pkts; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tx_lnk_free_pkts; } ;
struct TYPE_5__ {TYPE_1__ counters; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,size_t) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 *hlid)
{
	unsigned long flags;
	u8 link = FUNC1(wl->links_map, wl->num_links);
	if (link >= wl->num_links)
		return -EBUSY;

	wl->session_ids[link] = FUNC4(wl, link);

	/* these bits are used by op_tx */
	FUNC2(&wl->wl_lock, flags);
	FUNC0(link, wl->links_map);
	FUNC0(link, wlvif->links_map);
	FUNC3(&wl->wl_lock, flags);

	/*
	 * take the last "freed packets" value from the current FW status.
	 * on recovery, we might not have fw_status yet, and
	 * tx_lnk_free_pkts will be NULL. check for it.
	 */
	if (wl->fw_status->counters.tx_lnk_free_pkts)
		wl->links[link].prev_freed_pkts =
			wl->fw_status->counters.tx_lnk_free_pkts[link];
	wl->links[link].wlvif = wlvif;

	/*
	 * Take saved value for total freed packets from wlvif, in case this is
	 * recovery/resume
	 */
	if (wlvif->bss_type != BSS_TYPE_AP_BSS)
		wl->links[link].total_freed_pkts = wlvif->total_freed_pkts;

	*hlid = link;

	wl->active_link_count++;
	return 0;
}
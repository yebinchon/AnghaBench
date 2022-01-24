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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_slot {int slot_time; int /*<<< orphan*/  wone_index; int /*<<< orphan*/  role_id; } ;
typedef  enum acx_slot_type { ____Placeholder_acx_slot_type } acx_slot_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SLOT ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STATION_WONE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct acx_slot*) ; 
 struct acx_slot* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_slot*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif,
		    enum acx_slot_type slot_time)
{
	struct acx_slot *slot;
	int ret;

	FUNC3(DEBUG_ACX, "acx slot");

	slot = FUNC1(sizeof(*slot), GFP_KERNEL);
	if (!slot) {
		ret = -ENOMEM;
		goto out;
	}

	slot->role_id = wlvif->role_id;
	slot->wone_index = STATION_WONE_INDEX;
	slot->slot_time = slot_time;

	ret = FUNC2(wl, ACX_SLOT, slot, sizeof(*slot));
	if (ret < 0) {
		FUNC4("failed to set slot time: %d", ret);
		goto out;
	}

out:
	FUNC0(slot);
	return ret;
}
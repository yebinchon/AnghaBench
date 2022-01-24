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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ bcast_hlid; struct wl1271_ap_key** recorded_keys; } ;
struct wl12xx_vif {TYPE_1__ ap; int /*<<< orphan*/  default_key; } ;
struct wl1271_ap_key {scalar_t__ hlid; scalar_t__ key_type; int /*<<< orphan*/  tx_seq_16; int /*<<< orphan*/  tx_seq_32; int /*<<< orphan*/  key; int /*<<< orphan*/  key_size; int /*<<< orphan*/  id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_ADD_OR_REPLACE ; 
 scalar_t__ KEY_WEP ; 
 int MAX_NUM_KEYS ; 
 scalar_t__ WL12XX_INVALID_LINK_ID ; 
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int i, ret = 0;
	struct wl1271_ap_key *key;
	bool wep_key_added = false;

	for (i = 0; i < MAX_NUM_KEYS; i++) {
		u8 hlid;
		if (wlvif->ap.recorded_keys[i] == NULL)
			break;

		key = wlvif->ap.recorded_keys[i];
		hlid = key->hlid;
		if (hlid == WL12XX_INVALID_LINK_ID)
			hlid = wlvif->ap.bcast_hlid;

		ret = FUNC0(wl, wlvif, KEY_ADD_OR_REPLACE,
					    key->id, key->key_type,
					    key->key_size, key->key,
					    hlid, key->tx_seq_32,
					    key->tx_seq_16);
		if (ret < 0)
			goto out;

		if (key->key_type == KEY_WEP)
			wep_key_added = true;
	}

	if (wep_key_added) {
		ret = FUNC2(wl, wlvif->default_key,
						     wlvif->ap.bcast_hlid);
		if (ret < 0)
			goto out;
	}

out:
	FUNC1(wl, wlvif);
	return ret;
}
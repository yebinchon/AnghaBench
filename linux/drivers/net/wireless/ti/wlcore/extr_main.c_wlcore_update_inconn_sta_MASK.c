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
struct wl12xx_vif {int ap_pending_auth_reply; int /*<<< orphan*/  role_id; int /*<<< orphan*/  inconn_count; } ;
struct wl1271_station {int in_connection; } ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,struct wl12xx_vif*) ; 

void FUNC4(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			      struct wl1271_station *wl_sta, bool in_conn)
{
	if (in_conn) {
		if (FUNC0(wl_sta && wl_sta->in_connection))
			return;

		if (!wlvif->ap_pending_auth_reply &&
		    !wlvif->inconn_count)
			FUNC3(wl, wlvif);

		if (wl_sta) {
			wl_sta->in_connection = true;
			wlvif->inconn_count++;
		} else {
			wlvif->ap_pending_auth_reply = true;
		}
	} else {
		if (wl_sta && !wl_sta->in_connection)
			return;

		if (FUNC0(!wl_sta && !wlvif->ap_pending_auth_reply))
			return;

		if (FUNC0(wl_sta && !wlvif->inconn_count))
			return;

		if (wl_sta) {
			wl_sta->in_connection = false;
			wlvif->inconn_count--;
		} else {
			wlvif->ap_pending_auth_reply = false;
		}

		if (!wlvif->inconn_count && !wlvif->ap_pending_auth_reply &&
		    FUNC1(wlvif->role_id, wl->roc_map))
			FUNC2(wl, wlvif->role_id);
	}
}
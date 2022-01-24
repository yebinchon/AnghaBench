#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wl1251 {scalar_t__ station_mode; TYPE_1__* vif; scalar_t__ rssi_thold; scalar_t__ psm_requested; } ;
struct event_mailbox {int events_vector; int events_mask; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int BSS_LOSE_EVENT_ID ; 
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH ; 
 int /*<<< orphan*/  NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int PS_REPORT_EVENT_ID ; 
 int REGAINED_BSS_EVENT_ID ; 
 int ROAMING_TRIGGER_LOW_RSSI_EVENT_ID ; 
 int ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID ; 
 int SCAN_COMPLETE_EVENT_ID ; 
 scalar_t__ STATION_ACTIVE_MODE ; 
 scalar_t__ STATION_POWER_SAVE_MODE ; 
 int SYNCHRONIZATION_TIMEOUT_EVENT_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct event_mailbox*) ; 
 int FUNC4 (struct wl1251*,struct event_mailbox*) ; 
 int FUNC5 (struct wl1251*,struct event_mailbox*) ; 
 int FUNC6 (struct wl1251*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct wl1251 *wl, struct event_mailbox *mbox)
{
	int ret;
	u32 vector;

	FUNC3(mbox);

	vector = mbox->events_vector & ~(mbox->events_mask);
	FUNC2(DEBUG_EVENT, "vector: 0x%x", vector);

	if (vector & SCAN_COMPLETE_EVENT_ID) {
		ret = FUNC5(wl, mbox);
		if (ret < 0)
			return ret;
	}

	if (vector & BSS_LOSE_EVENT_ID) {
		FUNC2(DEBUG_EVENT, "BSS_LOSE_EVENT");

		if (wl->psm_requested &&
		    wl->station_mode != STATION_ACTIVE_MODE) {
			ret = FUNC6(wl, STATION_ACTIVE_MODE);
			if (ret < 0)
				return ret;
		}
	}

	if (vector & PS_REPORT_EVENT_ID) {
		FUNC2(DEBUG_EVENT, "PS_REPORT_EVENT");
		ret = FUNC4(wl, mbox);
		if (ret < 0)
			return ret;
	}

	if (vector & SYNCHRONIZATION_TIMEOUT_EVENT_ID) {
		FUNC2(DEBUG_EVENT, "SYNCHRONIZATION_TIMEOUT_EVENT");

		/* indicate to the stack, that beacons have been lost */
		if (wl->vif && wl->vif->type == NL80211_IFTYPE_STATION)
			FUNC0(wl->vif);
	}

	if (vector & REGAINED_BSS_EVENT_ID) {
		if (wl->psm_requested) {
			ret = FUNC6(wl, STATION_POWER_SAVE_MODE);
			if (ret < 0)
				return ret;
		}
	}

	if (wl->vif && wl->rssi_thold) {
		if (vector & ROAMING_TRIGGER_LOW_RSSI_EVENT_ID) {
			FUNC2(DEBUG_EVENT,
				     "ROAMING_TRIGGER_LOW_RSSI_EVENT");
			FUNC1(wl->vif,
				NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW,
				0, GFP_KERNEL);
		}

		if (vector & ROAMING_TRIGGER_REGAINED_RSSI_EVENT_ID) {
			FUNC2(DEBUG_EVENT,
				     "ROAMING_TRIGGER_REGAINED_RSSI_EVENT");
			FUNC1(wl->vif,
				NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH,
				0, GFP_KERNEL);
		}
	}

	return 0;
}
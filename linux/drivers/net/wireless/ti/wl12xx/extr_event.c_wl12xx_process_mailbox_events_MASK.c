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
typedef  int u32 ;
struct wl12xx_event_mailbox {int scheduled_scan_status; int /*<<< orphan*/  sta_aging_status; int /*<<< orphan*/  sta_tx_retry_exceeded; int /*<<< orphan*/  channel_switch_status; int /*<<< orphan*/  rx_ba_allowed; int /*<<< orphan*/  role_id; int /*<<< orphan*/  rssi_snr_trigger_metric; int /*<<< orphan*/  soft_gemini_sense_info; int /*<<< orphan*/  events_mask; int /*<<< orphan*/  events_vector; } ;
struct wl1271 {scalar_t__ scan_wlvif; struct wl12xx_event_mailbox* mbox; } ;

/* Variables and functions */
 int BA_SESSION_RX_CONSTRAINT_EVENT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BSS_LOSE_EVENT_ID ; 
 int CHANNEL_SWITCH_COMPLETE_EVENT_ID ; 
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int DUMMY_PACKET_EVENT_ID ; 
 int INACTIVE_STA_EVENT_ID ; 
 int MAX_TX_RETRY_EVENT_ID ; 
 int PERIODIC_SCAN_COMPLETE_EVENT_ID ; 
 int PERIODIC_SCAN_REPORT_EVENT_ID ; 
 int REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID ; 
 int RSSI_SNR_TRIGGER_0_EVENT_ID ; 
 int SCAN_COMPLETE_EVENT_ID ; 
 int SOFT_GEMINI_SENSE_EVENT_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wl1271*) ; 

int FUNC16(struct wl1271 *wl)
{
	struct wl12xx_event_mailbox *mbox = wl->mbox;
	u32 vector;


	vector = FUNC2(mbox->events_vector);
	vector &= ~(FUNC2(mbox->events_mask));

	FUNC3(DEBUG_EVENT, "MBOX vector: 0x%x", vector);

	if (vector & SCAN_COMPLETE_EVENT_ID) {
		FUNC3(DEBUG_EVENT, "status: 0x%x",
			     mbox->scheduled_scan_status);

		if (wl->scan_wlvif)
			FUNC4(wl, wl->scan_wlvif);
	}

	if (vector & PERIODIC_SCAN_REPORT_EVENT_ID) {
		FUNC3(DEBUG_EVENT,
			     "PERIODIC_SCAN_REPORT_EVENT (status 0x%0x)",
			     mbox->scheduled_scan_status);

		FUNC15(wl);
	}

	if (vector & PERIODIC_SCAN_COMPLETE_EVENT_ID)
		FUNC13(wl,
						  mbox->scheduled_scan_status);
	if (vector & SOFT_GEMINI_SENSE_EVENT_ID)
		FUNC14(wl,
					       mbox->soft_gemini_sense_info);

	if (vector & BSS_LOSE_EVENT_ID)
		FUNC6(wl, 0xff);

	if (vector & RSSI_SNR_TRIGGER_0_EVENT_ID)
		FUNC12(wl, mbox->rssi_snr_trigger_metric);

	if (vector & BA_SESSION_RX_CONSTRAINT_EVENT_ID)
		FUNC5(wl,
					      FUNC0(mbox->role_id),
					      mbox->rx_ba_allowed);

	if (vector & CHANNEL_SWITCH_COMPLETE_EVENT_ID)
		FUNC7(wl, 0xff,
					    mbox->channel_switch_status);

	if (vector & DUMMY_PACKET_EVENT_ID)
		FUNC8(wl);

	/*
	 * "TX retries exceeded" has a different meaning according to mode.
	 * In AP mode the offending station is disconnected.
	 */
	if (vector & MAX_TX_RETRY_EVENT_ID)
		FUNC10(wl,
				FUNC1(mbox->sta_tx_retry_exceeded));

	if (vector & INACTIVE_STA_EVENT_ID)
		FUNC9(wl,
					  FUNC1(mbox->sta_aging_status));

	if (vector & REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID)
		FUNC11(wl);

	return 0;
}
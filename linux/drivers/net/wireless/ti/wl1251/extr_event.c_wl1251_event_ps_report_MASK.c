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
struct wl1251 {int /*<<< orphan*/  psm_entry_retry; int /*<<< orphan*/  station_mode; } ;
struct event_mailbox {int ps_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
#define  EVENT_ENTER_POWER_SAVE_FAIL 131 
#define  EVENT_ENTER_POWER_SAVE_SUCCESS 130 
#define  EVENT_EXIT_POWER_SAVE_FAIL 129 
#define  EVENT_EXIT_POWER_SAVE_SUCCESS 128 
 int /*<<< orphan*/  STATION_POWER_SAVE_MODE ; 
 int /*<<< orphan*/  WL1251_PSM_ENTRY_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wl1251 *wl,
				  struct event_mailbox *mbox)
{
	int ret = 0;

	FUNC0(DEBUG_EVENT, "ps status: %x", mbox->ps_status);

	switch (mbox->ps_status) {
	case EVENT_ENTER_POWER_SAVE_FAIL:
		FUNC0(DEBUG_PSM, "PSM entry failed");

		if (wl->station_mode != STATION_POWER_SAVE_MODE) {
			/* remain in active mode */
			wl->psm_entry_retry = 0;
			break;
		}

		if (wl->psm_entry_retry < WL1251_PSM_ENTRY_RETRIES) {
			wl->psm_entry_retry++;
			ret = FUNC2(wl, STATION_POWER_SAVE_MODE);
		} else {
			FUNC1("Power save entry failed, giving up");
			wl->psm_entry_retry = 0;
		}
		break;
	case EVENT_ENTER_POWER_SAVE_SUCCESS:
	case EVENT_EXIT_POWER_SAVE_FAIL:
	case EVENT_EXIT_POWER_SAVE_SUCCESS:
	default:
		wl->psm_entry_retry = 0;
		break;
	}

	return 0;
}
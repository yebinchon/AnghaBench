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
typedef  int /*<<< orphan*/  wrqu ;
typedef  union iwreq_data {int dummy; } iwreq_data ;
typedef  int /*<<< orphan*/  u8 ;
struct rtllib_device {int be_scan_inprogress; int* active_channel_map; scalar_t__ state; int actscanning; int /*<<< orphan*/  dev; int /*<<< orphan*/  scan_mutex; scalar_t__ sync_scan_hurryup; int /*<<< orphan*/  (* set_chan ) (int /*<<< orphan*/ ,short) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtllib_device*) ; 
 short MAX_CHANNEL_NUMBER ; 
 scalar_t__ RTLLIB_LINKED ; 
 int /*<<< orphan*/  RTLLIB_SOFTMAC_SCAN_TIME ; 
 int /*<<< orphan*/  SIOCGIWSCAN ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC2 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtllib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct rtllib_device *ieee, u8 is_mesh)
{
	union iwreq_data wrqu;
	short ch = 0;

	FUNC8(ieee);

	ieee->be_scan_inprogress = true;

	FUNC4(&ieee->scan_mutex);

	while (1) {
		do {
			ch++;
			if (ch > MAX_CHANNEL_NUMBER)
				goto out; /* scan completed */
		} while (!ieee->active_channel_map[ch]);

		/* this function can be called in two situations
		 * 1- We have switched to ad-hoc mode and we are
		 *    performing a complete syncro scan before conclude
		 *    there are no interesting cell and to create a
		 *    new one. In this case the link state is
		 *    RTLLIB_NOLINK until we found an interesting cell.
		 *    If so the ieee8021_new_net, called by the RX path
		 *    will set the state to RTLLIB_LINKED, so we stop
		 *    scanning
		 * 2- We are linked and the root uses run iwlist scan.
		 *    So we switch to RTLLIB_LINKED_SCANNING to remember
		 *    that we are still logically linked (not interested in
		 *    new network events, despite for updating the net list,
		 *    but we are temporarly 'unlinked' as the driver shall
		 *    not filter RX frames and the channel is changing.
		 * So the only situation in which are interested is to check
		 * if the state become LINKED because of the #1 situation
		 */

		if (ieee->state == RTLLIB_LINKED)
			goto out;
		if (ieee->sync_scan_hurryup) {
			FUNC6(ieee->dev,
				    "============>sync_scan_hurryup out\n");
			goto out;
		}

		ieee->set_chan(ieee->dev, ch);
		if (ieee->active_channel_map[ch] == 1)
			FUNC7(ieee, 0);

		/* this prevent excessive time wait when we
		 * need to wait for a syncro scan to end..
		 */
		FUNC3(RTLLIB_SOFTMAC_SCAN_TIME);
	}
out:
	ieee->actscanning = false;
	ieee->sync_scan_hurryup = 0;

	if (ieee->state >= RTLLIB_LINKED) {
		if (FUNC0(ieee))
			FUNC1(ieee);
	}
	FUNC5(&ieee->scan_mutex);

	ieee->be_scan_inprogress = false;

	FUNC2(&wrqu, 0, sizeof(wrqu));
	FUNC10(ieee->dev, SIOCGIWSCAN, &wrqu, NULL);
}
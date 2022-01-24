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
struct TYPE_3__ {int length; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {char* ssid; int ssid_len; } ;
struct ieee80211_device {int sync_scan_hurryup; short proto_started; scalar_t__ iw_mode; int ssid_set; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  lock; TYPE_2__ current_network; } ;

/* Variables and functions */
 int E2BIG ; 
 int IW_ESSID_MAX_SIZE ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(struct ieee80211_device *ieee,
			      struct iw_request_info *a,
			      union iwreq_data *wrqu, char *extra)
{

	int ret = 0, len;
	short proto_started;
	unsigned long flags;

	ieee->sync_scan_hurryup = 1;
	FUNC2(&ieee->wx_mutex);

	proto_started = ieee->proto_started;

	if (wrqu->essid.length > IW_ESSID_MAX_SIZE) {
		ret = -E2BIG;
		goto out;
	}

	if (ieee->iw_mode == IW_MODE_MONITOR) {
		ret = -1;
		goto out;
	}

	if (proto_started)
		FUNC1(ieee);


	/* this is just to be sure that the GET wx callback
	 * has consisten infos. not needed otherwise
	 */
	FUNC4(&ieee->lock, flags);

	if (wrqu->essid.flags && wrqu->essid.length) {
		/* first flush current network.ssid */
		len = ((wrqu->essid.length - 1) < IW_ESSID_MAX_SIZE) ? (wrqu->essid.length - 1) : IW_ESSID_MAX_SIZE;
		FUNC6(ieee->current_network.ssid, extra, len + 1);
		ieee->current_network.ssid_len = len + 1;
		ieee->ssid_set = 1;
	} else {
		ieee->ssid_set = 0;
		ieee->current_network.ssid[0] = '\0';
		ieee->current_network.ssid_len = 0;
	}
	FUNC5(&ieee->lock, flags);

	if (proto_started)
		FUNC0(ieee);
out:
	FUNC3(&ieee->wx_mutex);
	return ret;
}
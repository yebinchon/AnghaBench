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
struct TYPE_3__ {scalar_t__ length; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct TYPE_4__ {char* ssid; int ssid_len; } ;
struct rtllib_device {short proto_started; scalar_t__ iw_mode; int cannot_notify; int ssid_set; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  lock; TYPE_2__ current_network; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  __u16 ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

int FUNC9(struct rtllib_device *ieee,
			struct iw_request_info *a,
			union iwreq_data *wrqu, char *extra)
{

	int ret = 0, len, i;
	short proto_started;
	unsigned long flags;

	FUNC5(ieee);
	FUNC1(&ieee->wx_mutex);

	proto_started = ieee->proto_started;

	len = FUNC0(__u16, wrqu->essid.length, IW_ESSID_MAX_SIZE);

	if (ieee->iw_mode == IW_MODE_MONITOR) {
		ret = -1;
		goto out;
	}

	for (i = 0; i < len; i++) {
		if (extra[i] < 0) {
			ret = -1;
			goto out;
		}
	}

	if (proto_started)
		FUNC4(ieee, true);


	/* this is just to be sure that the GET wx callback
	 * has consistent infos. not needed otherwise
	 */
	FUNC6(&ieee->lock, flags);

	if (wrqu->essid.flags && wrqu->essid.length) {
		FUNC8(ieee->current_network.ssid, extra, len);
		ieee->current_network.ssid_len = len;
		ieee->cannot_notify = false;
		ieee->ssid_set = 1;
	} else {
		ieee->ssid_set = 0;
		ieee->current_network.ssid[0] = '\0';
		ieee->current_network.ssid_len = 0;
	}
	FUNC7(&ieee->lock, flags);

	if (proto_started)
		FUNC3(ieee);
out:
	FUNC2(&ieee->wx_mutex);
	return ret;
}
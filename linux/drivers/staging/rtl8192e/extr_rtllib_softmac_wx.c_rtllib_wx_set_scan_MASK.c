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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct rtllib_device {scalar_t__ iw_mode; scalar_t__ state; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  wx_sync_scan_wq; int /*<<< orphan*/  proto_started; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ IW_MODE_MONITOR ; 
 scalar_t__ RTLLIB_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct rtllib_device *ieee, struct iw_request_info *a,
			     union iwreq_data *wrqu, char *b)
{
	int ret = 0;

	FUNC0(&ieee->wx_mutex);

	if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
		ret = -1;
		goto out;
	}

	if (ieee->state == RTLLIB_LINKED) {
		FUNC2(&ieee->wx_sync_scan_wq);
		/* intentionally forget to up sem */
		return 0;
	}

out:
	FUNC1(&ieee->wx_mutex);
	return ret;
}
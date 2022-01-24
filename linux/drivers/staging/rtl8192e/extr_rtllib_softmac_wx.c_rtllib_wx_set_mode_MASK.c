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
union iwreq_data {int mode; } ;
struct rtllib_device {int iw_mode; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  proto_started; TYPE_1__* dev; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211 ; 
 int EINVAL ; 
#define  IW_MODE_ADHOC 131 
#define  IW_MODE_AUTO 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MONITOR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*) ; 

int FUNC7(struct rtllib_device *ieee, struct iw_request_info *a,
			     union iwreq_data *wrqu, char *b)
{
	int set_mode_status = 0;

	FUNC6(ieee);
	FUNC0(&ieee->wx_mutex);
	switch (wrqu->mode) {
	case IW_MODE_MONITOR:
	case IW_MODE_ADHOC:
	case IW_MODE_INFRA:
		break;
	case IW_MODE_AUTO:
		wrqu->mode = IW_MODE_INFRA;
		break;
	default:
		set_mode_status = -EINVAL;
		goto out;
	}

	if (wrqu->mode == ieee->iw_mode)
		goto out;

	if (wrqu->mode == IW_MODE_MONITOR) {
		ieee->dev->type = ARPHRD_IEEE80211;
		FUNC3(ieee->dev, false);
	} else {
		ieee->dev->type = ARPHRD_ETHER;
		if (ieee->iw_mode == IW_MODE_MONITOR)
			FUNC2(ieee->dev, false);
	}

	if (!ieee->proto_started) {
		ieee->iw_mode = wrqu->mode;
	} else {
		FUNC5(ieee, true);
		ieee->iw_mode = wrqu->mode;
		FUNC4(ieee);
	}

out:
	FUNC1(&ieee->wx_mutex);
	return set_mode_status;
}
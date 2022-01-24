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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct rtllib_device {short proto_started; scalar_t__ iw_mode; int wap_set; int cannot_notify; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  lock; TYPE_1__ current_network; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 scalar_t__ IW_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC9(struct rtllib_device *ieee,
			 struct iw_request_info *info,
			 union iwreq_data *awrq,
			 char *extra)
{

	int ret = 0;
	unsigned long flags;

	short ifup = ieee->proto_started;
	struct sockaddr *temp = (struct sockaddr *)awrq;

	FUNC6(ieee);

	FUNC2(&ieee->wx_mutex);
	/* use ifconfig hw ether */
	if (ieee->iw_mode == IW_MODE_MASTER) {
		ret = -1;
		goto out;
	}

	if (temp->sa_family != ARPHRD_ETHER) {
		ret = -EINVAL;
		goto out;
	}

	if (FUNC1(temp->sa_data)) {
		FUNC7(&ieee->lock, flags);
		FUNC0(ieee->current_network.bssid, temp->sa_data);
		ieee->wap_set = 0;
		FUNC8(&ieee->lock, flags);
		ret = -1;
		goto out;
	}


	if (ifup)
		FUNC5(ieee, true);

	/* just to avoid to give inconsistent infos in the
	 * get wx method. not really needed otherwise
	 */
	FUNC7(&ieee->lock, flags);

	ieee->cannot_notify = false;
	FUNC0(ieee->current_network.bssid, temp->sa_data);
	ieee->wap_set = !FUNC1(temp->sa_data);

	FUNC8(&ieee->lock, flags);

	if (ifup)
		FUNC4(ieee);
out:
	FUNC3(&ieee->wx_mutex);
	return ret;
}
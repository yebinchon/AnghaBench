#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
union iwreq_data {TYPE_2__ data; } ;
struct r8192_priv {int /*<<< orphan*/  wx_mutex; struct ieee80211_device* ieee80211; int /*<<< orphan*/  up; } ;
struct net_device {int dummy; } ;
struct iw_scan_req {scalar_t__ essid_len; int /*<<< orphan*/  essid; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ssid; scalar_t__ ssid_len; } ;
struct TYPE_4__ {scalar_t__ bBusyTraffic; } ;
struct ieee80211_device {scalar_t__ state; scalar_t__ scanning; TYPE_3__ current_network; TYPE_1__ LinkDetectInfo; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENETDOWN ; 
 scalar_t__ IEEE80211_LINKED ; 
 int IW_SCAN_THIS_ESSID ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int FUNC2 (struct ieee80211_device*,struct iw_request_info*,union iwreq_data*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct iw_request_info *a,
			     union iwreq_data *wrqu, char *b)
{
	struct r8192_priv *priv = FUNC0(dev);
	struct ieee80211_device *ieee = priv->ieee80211;
	int ret = 0;

	if (!priv->up)
		return -ENETDOWN;

	if (priv->ieee80211->LinkDetectInfo.bBusyTraffic)
		return -EAGAIN;
	if (wrqu->data.flags & IW_SCAN_THIS_ESSID) {
		struct iw_scan_req *req = (struct iw_scan_req *)b;

		if (req->essid_len) {
			ieee->current_network.ssid_len = req->essid_len;
			FUNC3(ieee->current_network.ssid, req->essid, req->essid_len);
		}
	}

	FUNC4(&priv->wx_mutex);
	if (priv->ieee80211->state != IEEE80211_LINKED) {
		priv->ieee80211->scanning = 0;
		FUNC1(priv->ieee80211);
		ret = 0;
	} else {
		ret = FUNC2(priv->ieee80211, a, wrqu, b);
	}
	FUNC5(&priv->wx_mutex);
	return ret;
}
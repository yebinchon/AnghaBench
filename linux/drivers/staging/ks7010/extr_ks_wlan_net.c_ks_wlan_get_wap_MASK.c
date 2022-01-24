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
struct TYPE_4__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ current_ap; int /*<<< orphan*/  connect_status; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int EPERM ; 
 scalar_t__ SLP_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ks_wlan_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct iw_request_info *info,
			   union iwreq_data *awrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC3(dev);

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	if (FUNC2(priv->connect_status))
		FUNC1(awrq->ap_addr.sa_data, priv->current_ap.bssid);
	else
		FUNC0(awrq->ap_addr.sa_data);

	awrq->ap_addr.sa_family = ARPHRD_ETHER;

	return 0;
}
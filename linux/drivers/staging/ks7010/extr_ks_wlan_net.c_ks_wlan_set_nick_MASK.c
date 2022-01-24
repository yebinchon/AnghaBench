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
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int /*<<< orphan*/  nick; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINPROGRESS ; 
 int EPERM ; 
 scalar_t__ SLP_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ks_wlan_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *dwrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC2(dev);

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	/* Check the size of the string */
	if (dwrq->data.length > 16 + 1)
		return -E2BIG;

	FUNC1(priv->nick, 0, sizeof(priv->nick));
	FUNC0(priv->nick, extra, dwrq->data.length);

	return -EINPROGRESS;	/* Call commit handler */
}
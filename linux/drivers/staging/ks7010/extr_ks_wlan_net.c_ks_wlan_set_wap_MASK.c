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
struct TYPE_3__ {int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ operation_mode; scalar_t__ bssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int need_commit; TYPE_2__ reg; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ MODE_ADHOC ; 
 scalar_t__ MODE_INFRASTRUCTURE ; 
 scalar_t__ SLP_SLEEP ; 
 int SME_MODE_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__) ; 
 struct ks_wlan_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct iw_request_info *info,
			   union iwreq_data *awrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC4(dev);

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	if (priv->reg.operation_mode != MODE_ADHOC &&
	    priv->reg.operation_mode != MODE_INFRASTRUCTURE) {
		FUNC0(priv->reg.bssid);
		return -EOPNOTSUPP;
	}

	FUNC1(priv->reg.bssid, awrq->ap_addr.sa_data);
	if (FUNC2((u8 *)priv->reg.bssid))
		priv->need_commit |= SME_MODE_SET;

	FUNC3(dev, "bssid = %pM\n", priv->reg.bssid);

	/* Write it to the card */
	if (priv->need_commit) {
		priv->need_commit |= SME_MODE_SET;
		return -EINPROGRESS;	/* Call commit handler */
	}
	return 0;
}
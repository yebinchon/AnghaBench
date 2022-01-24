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
struct TYPE_4__ {size_t length; int /*<<< orphan*/  flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/  body; } ;
struct TYPE_6__ {TYPE_2__ ssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int /*<<< orphan*/  need_commit; TYPE_3__ reg; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 size_t IW_ESSID_MAX_SIZE ; 
 scalar_t__ SLP_SLEEP ; 
 int /*<<< orphan*/  SME_MODE_SET ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ks_wlan_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			     struct iw_request_info *info,
			     union iwreq_data *dwrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC3(dev);
	size_t len;

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	/* Check if we asked for `any' */
	if (!dwrq->essid.flags) {
		/* Just send an empty SSID list */
		FUNC2(priv->reg.ssid.body, 0, sizeof(priv->reg.ssid.body));
		priv->reg.ssid.size = 0;
	} else {
		len = dwrq->essid.length;
		/* iwconfig uses nul termination in SSID.. */
		if (len > 0 && extra[len - 1] == '\0')
			len--;

		/* Check the size of the string */
		if (len > IW_ESSID_MAX_SIZE)
			return -EINVAL;

		/* Set the SSID */
		FUNC2(priv->reg.ssid.body, 0, sizeof(priv->reg.ssid.body));
		FUNC1(priv->reg.ssid.body, extra, len);
		priv->reg.ssid.size = len;
	}
	/* Write it to the card */
	priv->need_commit |= SME_MODE_SET;

	FUNC0(priv, priv->need_commit);
	priv->need_commit = 0;
	return 0;
}
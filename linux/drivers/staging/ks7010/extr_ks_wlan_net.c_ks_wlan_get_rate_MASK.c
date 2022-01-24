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
struct TYPE_4__ {int value; int fixed; } ;
union iwreq_data {TYPE_2__ bitrate; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ tx_rate; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int current_rate; TYPE_1__ reg; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int RATE_MASK ; 
 scalar_t__ SLP_SLEEP ; 
 scalar_t__ TX_RATE_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ks_wlan_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  update_phyinfo ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *vwrq, char *extra)
{
	struct ks_wlan_private *priv = FUNC4(dev);

	FUNC3(dev, "in_interrupt = %ld update_phyinfo = %d\n",
		   FUNC1(), FUNC0(&update_phyinfo));

	if (priv->sleep_mode == SLP_SLEEP)
		return -EPERM;

	/* for SLEEP MODE */
	if (!FUNC0(&update_phyinfo))
		FUNC2(priv);

	vwrq->bitrate.value = ((priv->current_rate) & RATE_MASK) * 500000;
	vwrq->bitrate.fixed = (priv->reg.tx_rate == TX_RATE_FIXED) ? 1 : 0;

	return 0;
}
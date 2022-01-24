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
typedef  int /*<<< orphan*/  u64 ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int bssid; int fcs; scalar_t__ promiscuous; } ;
struct cw1200_common {int disable_beacon_filter; int listening; TYPE_2__ scan; int /*<<< orphan*/  conf_mutex; TYPE_1__ rx_filter; } ;

/* Variables and functions */
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_FCSFAIL ; 
 unsigned int FIF_OTHER_BSS ; 
 unsigned int FIF_PROBE_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC7 (struct cw1200_common*) ; 

void FUNC8(struct ieee80211_hw *dev,
			     unsigned int changed_flags,
			     unsigned int *total_flags,
			     u64 multicast)
{
	struct cw1200_common *priv = dev->priv;
	bool listening = !!(*total_flags &
			    (FIF_OTHER_BSS |
			     FIF_BCN_PRBRESP_PROMISC |
			     FIF_PROBE_REQ));

	*total_flags &= FIF_OTHER_BSS |
			FIF_FCSFAIL |
			FIF_BCN_PRBRESP_PROMISC |
			FIF_PROBE_REQ;

	FUNC2(&priv->scan.lock);
	FUNC3(&priv->conf_mutex);

	priv->rx_filter.promiscuous = 0;
	priv->rx_filter.bssid = (*total_flags & (FIF_OTHER_BSS |
			FIF_PROBE_REQ)) ? 1 : 0;
	priv->rx_filter.fcs = (*total_flags & FIF_FCSFAIL) ? 1 : 0;
	priv->disable_beacon_filter = !(*total_flags &
					(FIF_BCN_PRBRESP_PROMISC |
					 FIF_PROBE_REQ));
	if (priv->listening != listening) {
		priv->listening = listening;
		FUNC6(priv);
		FUNC1(priv, listening);
		FUNC7(priv);
	}
	FUNC0(priv);
	FUNC4(&priv->conf_mutex);
	FUNC5(&priv->scan.lock);
}
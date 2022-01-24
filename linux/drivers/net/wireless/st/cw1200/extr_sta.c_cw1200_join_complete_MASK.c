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
struct cw1200_common {int join_pending; scalar_t__ mode; int /*<<< orphan*/  join_status; int /*<<< orphan*/  vif; int /*<<< orphan*/  listening; scalar_t__ join_complete_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW1200_JOIN_STATUS_IBSS ; 
 int /*<<< orphan*/  CW1200_JOIN_STATUS_PASSIVE ; 
 int /*<<< orphan*/  CW1200_JOIN_STATUS_PRE_STA ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

__attribute__((used)) static void FUNC5(struct cw1200_common *priv)
{
	FUNC3("[STA] Join complete (%d)\n", priv->join_complete_status);

	priv->join_pending = false;
	if (priv->join_complete_status) {
		priv->join_status = CW1200_JOIN_STATUS_PASSIVE;
		FUNC1(priv, priv->listening);
		FUNC0(priv);
		FUNC2(priv->vif);
	} else {
		if (priv->mode == NL80211_IFTYPE_ADHOC)
			priv->join_status = CW1200_JOIN_STATUS_IBSS;
		else
			priv->join_status = CW1200_JOIN_STATUS_PRE_STA;
	}
	FUNC4(priv); /* Clearing the lock held before do_join() */
}
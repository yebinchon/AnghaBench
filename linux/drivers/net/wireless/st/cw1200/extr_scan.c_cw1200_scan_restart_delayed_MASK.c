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
struct cw1200_common {scalar_t__ join_status; int delayed_unjoin; scalar_t__ delayed_link_loss; TYPE_1__* hw; int /*<<< orphan*/  unjoin_work; int /*<<< orphan*/  workqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 

__attribute__((used)) static void FUNC6(struct cw1200_common *priv)
{
	/* FW bug: driver has to restart p2p-dev mode after scan. */
	if (priv->join_status == CW1200_JOIN_STATUS_MONITOR) {
		FUNC1(priv);
		FUNC2(priv);
	}

	if (priv->delayed_unjoin) {
		priv->delayed_unjoin = false;
		if (FUNC3(priv->workqueue, &priv->unjoin_work) <= 0)
			FUNC5(priv);
	} else if (priv->delayed_link_loss) {
			FUNC4(priv->hw->wiphy, "[CQM] Requeue BSS loss.\n");
			priv->delayed_link_loss = 0;
			FUNC0(priv, 1, 0, 0);
	}
}
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
struct sk_buff {int dummy; } ;
struct cw1200_common {int bss_loss_state; int /*<<< orphan*/  hw; TYPE_1__* vif; int /*<<< orphan*/  bss_loss_work; int /*<<< orphan*/  bss_params_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  tx_lock; scalar_t__ delayed_unjoin; scalar_t__ delayed_link_loss; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cw1200_bssloss_mitigation ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct cw1200_common *priv,
			     int init, int good, int bad)
{
	int tx = 0;

	priv->delayed_link_loss = 0;
	FUNC3(&priv->bss_params_work);

	FUNC6("[STA] CQM BSSLOSS_SM: state: %d init %d good %d bad: %d txlock: %d uj: %d\n",
		 priv->bss_loss_state,
		 init, good, bad,
		 FUNC1(&priv->tx_lock),
		 priv->delayed_unjoin);

	/* If we have a pending unjoin */
	if (priv->delayed_unjoin)
		return;

	if (init) {
		FUNC7(priv->workqueue,
				   &priv->bss_loss_work,
				   HZ);
		priv->bss_loss_state = 0;

		/* Skip the confimration procedure in P2P case */
		if (!priv->vif->p2p && !FUNC1(&priv->tx_lock))
			tx = 1;
	} else if (good) {
		FUNC2(&priv->bss_loss_work);
		priv->bss_loss_state = 0;
		FUNC8(priv->workqueue, &priv->bss_params_work);
	} else if (bad) {
		/* XXX Should we just keep going until we time out? */
		if (priv->bss_loss_state < 3)
			tx = 1;
	} else {
		FUNC2(&priv->bss_loss_work);
		priv->bss_loss_state = 0;
	}

	/* Bypass mitigation if it's disabled */
	if (!cw1200_bssloss_mitigation)
		tx = 0;

	/* Spit out a NULL packet to our AP if necessary */
	if (tx) {
		struct sk_buff *skb;

		priv->bss_loss_state++;

		skb = FUNC5(priv->hw, priv->vif, false);
		FUNC0(!skb);
		if (skb)
			FUNC4(priv->hw, NULL, skb);
	}
}
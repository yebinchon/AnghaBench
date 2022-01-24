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
struct wsm_reset {int reset_statistics; } ;
struct TYPE_3__ {int /*<<< orphan*/  in_progress; } ;
struct cw1200_common {int join_pending; int delayed_unjoin; int delayed_link_loss; scalar_t__ join_status; int output_power; int disable_beacon_filter; int setbssparams_done; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  firmware_ps_mode; int /*<<< orphan*/  bss_params; int /*<<< orphan*/  association_mode; int /*<<< orphan*/  listening; int /*<<< orphan*/  event_handler; scalar_t__ join_dtim_period; int /*<<< orphan*/  set_beacon_wakeup_period_work; int /*<<< orphan*/  update_filtering_work; TYPE_2__* hw; TYPE_1__ scan; int /*<<< orphan*/  join_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_AP ; 
 scalar_t__ CW1200_JOIN_STATUS_PASSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC7 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC14 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cw1200_common*,struct wsm_reset*) ; 
 int /*<<< orphan*/  FUNC16 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cw1200_common*,int) ; 

__attribute__((used)) static void FUNC18(struct cw1200_common *priv)
{
	struct wsm_reset reset = {
		.reset_statistics = true,
	};

	FUNC1(&priv->join_timeout);

	FUNC9(&priv->conf_mutex);
	priv->join_pending = false;

	if (FUNC0(&priv->scan.in_progress)) {
		if (priv->delayed_unjoin)
			FUNC12(priv->hw->wiphy, "Delayed unjoin is already scheduled.\n");
		else
			priv->delayed_unjoin = true;
		goto done;
	}

	priv->delayed_link_loss = false;

	if (!priv->join_status)
		goto done;

	if (priv->join_status == CW1200_JOIN_STATUS_AP)
		goto done;

	FUNC2(&priv->update_filtering_work);
	FUNC2(&priv->set_beacon_wakeup_period_work);
	priv->join_status = CW1200_JOIN_STATUS_PASSIVE;

	/* Unjoin is a reset. */
	FUNC13(priv);
	FUNC14(priv, 0);
	FUNC15(priv, &reset);
	FUNC17(priv, priv->output_power * 10);
	priv->join_dtim_period = 0;
	FUNC5(priv);
	FUNC4(priv);
	FUNC2(&priv->event_handler);
	FUNC7(priv, priv->listening);
	FUNC3(priv, 0, 0, 0);

	/* Disable Block ACKs */
	FUNC16(priv, 0, 0);

	priv->disable_beacon_filter = false;
	FUNC6(priv);
	FUNC8(&priv->association_mode, 0,
	       sizeof(priv->association_mode));
	FUNC8(&priv->bss_params, 0, sizeof(priv->bss_params));
	priv->setbssparams_done = false;
	FUNC8(&priv->firmware_ps_mode, 0,
	       sizeof(priv->firmware_ps_mode));

	FUNC11("[STA] Unjoin completed.\n");

done:
	FUNC10(&priv->conf_mutex);
}
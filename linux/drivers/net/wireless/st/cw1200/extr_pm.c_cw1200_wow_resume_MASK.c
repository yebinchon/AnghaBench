#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_suspend_state {int beacon_skipping; int /*<<< orphan*/  link_id_gc; int /*<<< orphan*/  direct_probe; int /*<<< orphan*/  join_tmo; int /*<<< orphan*/  bss_loss_tmo; int /*<<< orphan*/  prev_ps_mode; } ;
struct cw1200_pm_state {struct cw1200_suspend_state* suspend_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  probe_work; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  mode; } ;
struct cw1200_common {scalar_t__ join_status; int beacon_int; int join_dtim_period; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  link_id_gc_work; TYPE_3__ scan; int /*<<< orphan*/  join_timeout; int /*<<< orphan*/  bss_loss_work; TYPE_4__ powersave_mode; TYPE_2__* vif; int /*<<< orphan*/  hwbus_priv; TYPE_1__* hwbus_ops; struct cw1200_pm_state pm_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  p2p; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* power_mgmt ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_STA ; 
 int MAX_BEACON_SKIP_TIME_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cw1200_common*) ; 
 int /*<<< orphan*/  cw1200_ether_type_filter_off ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*,TYPE_4__*) ; 
 int /*<<< orphan*/  cw1200_udp_port_filter_off ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_suspend_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_common*) ; 

int FUNC12(struct ieee80211_hw *hw)
{
	struct cw1200_common *priv = hw->priv;
	struct cw1200_pm_state *pm_state = &priv->pm_state;
	struct cw1200_suspend_state *state;

	state = pm_state->suspend_state;
	pm_state->suspend_state = NULL;

	/* Disable IRQ wake */
	priv->hwbus_ops->power_mgmt(priv->hwbus_priv, false);

	/* Scan.lock must be released before BH is resumed other way
	 * in case when BSS_LOST command arrived the processing of the
	 * command will be delayed.
	 */
	FUNC7(&priv->scan.lock);

	/* Resume BH thread */
	FUNC0(FUNC1(priv));

	/* Restores previous PS mode */
	if (!priv->vif->p2p && priv->join_status == CW1200_JOIN_STATUS_STA) {
		priv->powersave_mode.mode = state->prev_ps_mode;
		FUNC3(priv, &priv->powersave_mode);
	}

	if (state->beacon_skipping) {
		FUNC8(priv, priv->beacon_int *
					     priv->join_dtim_period >
					     MAX_BEACON_SKIP_TIME_MS ? 1 :
					     priv->join_dtim_period, 0);
		state->beacon_skipping = false;
	}

	/* Resume delayed work */
	FUNC2(priv, &priv->bss_loss_work,
			   state->bss_loss_tmo);
	FUNC2(priv, &priv->join_timeout,
			   state->join_tmo);
	FUNC2(priv, &priv->scan.probe_work,
			   state->direct_probe);
	FUNC2(priv, &priv->link_id_gc_work,
			   state->link_id_gc);

	/* Remove UDP port filter */
	FUNC10(priv, &cw1200_udp_port_filter_off);

	/* Remove ethernet frame type filter */
	FUNC9(priv, &cw1200_ether_type_filter_off);

	/* Unlock datapath */
	FUNC11(priv);

	/* Unlock configuration mutex */
	FUNC5(&priv->conf_mutex);

	/* Free memory */
	FUNC4(state);

	return 0;
}
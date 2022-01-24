#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_suspend_state {scalar_t__ prev_ps_mode; int beacon_skipping; void* link_id_gc; void* direct_probe; void* join_tmo; void* bss_loss_tmo; } ;
struct cw1200_pm_state {struct cw1200_suspend_state* suspend_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  stay_awake; } ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  probe_work; } ;
struct TYPE_15__ {scalar_t__ mode; } ;
struct TYPE_9__ {scalar_t__ num_queued; } ;
struct cw1200_common {scalar_t__ join_status; int join_dtim_period; int /*<<< orphan*/  conf_mutex; TYPE_5__ scan; int /*<<< orphan*/  link_id_gc_work; int /*<<< orphan*/  join_timeout; int /*<<< orphan*/  bss_loss_work; int /*<<< orphan*/  bh_rx; TYPE_4__* hw; int /*<<< orphan*/  hwbus_priv; TYPE_3__* hwbus_ops; int /*<<< orphan*/  mcast_timeout; int /*<<< orphan*/  has_multicast_subscription; int /*<<< orphan*/  recent_scan; int /*<<< orphan*/  clear_recent_scan_work; int /*<<< orphan*/  ps_mode_switch_in_progress; int /*<<< orphan*/  ps_mode_switch_done; TYPE_7__ powersave_mode; TYPE_2__* vif; int /*<<< orphan*/  hw_bufs_used; int /*<<< orphan*/  bh_evt_wq; scalar_t__ join_pending; scalar_t__ channel_switch_in_progress; TYPE_1__ tx_queue_stats; struct cw1200_pm_state pm_state; } ;
struct cfg80211_wowlan {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  wiphy; } ;
struct TYPE_11__ {int (* power_mgmt ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int CW1200_BEACON_SKIPPING_MULTIPLIER ; 
 scalar_t__ CW1200_JOIN_STATUS_STA ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WSM_PSM_PS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 scalar_t__ FUNC5 (struct cw1200_common*) ; 
 int /*<<< orphan*/  cw1200_ether_type_filter_off ; 
 TYPE_8__ cw1200_ether_type_filter_on ; 
 int /*<<< orphan*/  FUNC6 (struct cw1200_common*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct cw1200_common*,TYPE_7__*) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cw1200_udp_port_filter_off ; 
 TYPE_6__ cw1200_udp_port_filter_on ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_suspend_state*) ; 
 struct cw1200_suspend_state* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC24 (struct cw1200_common*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct cw1200_common*) ; 

int FUNC28(struct ieee80211_hw *hw, struct cfg80211_wowlan *wowlan)
{
	struct cw1200_common *priv = hw->priv;
	struct cw1200_pm_state *pm_state = &priv->pm_state;
	struct cw1200_suspend_state *state;
	int ret;

	FUNC15(&pm_state->lock);
	ret = FUNC18(&pm_state->stay_awake);
	FUNC16(&pm_state->lock);
	if (ret)
		return -EAGAIN;

	/* Do not suspend when datapath is not idle */
	if (priv->tx_queue_stats.num_queued)
		return -EBUSY;

	/* Make sure there is no configuration requests in progress. */
	if (!FUNC13(&priv->conf_mutex))
		return -EBUSY;

	/* Ensure pending operations are done.
	 * Note also that wow_suspend must return in ~2.5sec, before
	 * watchdog is triggered.
	 */
	if (priv->channel_switch_in_progress)
		goto revert1;

	/* Do not suspend when join is pending */
	if (priv->join_pending)
		goto revert1;

	/* Do not suspend when scanning */
	if (FUNC10(&priv->scan.lock))
		goto revert1;

	/* Lock TX. */
	FUNC23(priv);

	/* Wait to avoid possible race with bh code.
	 * But do not wait too long...
	 */
	if (FUNC21(priv->bh_evt_wq,
			       !priv->hw_bufs_used, HZ / 10) <= 0)
		goto revert2;

	/* Set UDP filter */
	FUNC26(priv, &cw1200_udp_port_filter_on.hdr);

	/* Set ethernet frame type filter */
	FUNC25(priv, &cw1200_ether_type_filter_on.hdr);

	/* Allocate state */
	state = FUNC12(sizeof(struct cw1200_suspend_state), GFP_KERNEL);
	if (!state)
		goto revert3;

	/* Change to legacy PS while going to suspend */
	if (!priv->vif->p2p &&
	    priv->join_status == CW1200_JOIN_STATUS_STA &&
	    priv->powersave_mode.mode != WSM_PSM_PS) {
		state->prev_ps_mode = priv->powersave_mode.mode;
		priv->powersave_mode.mode = WSM_PSM_PS;
		FUNC7(priv, &priv->powersave_mode);
		if (FUNC20(priv->ps_mode_switch_done,
						     !priv->ps_mode_switch_in_progress, 1*HZ) <= 0) {
			goto revert4;
		}
	}

	/* Store delayed work states. */
	state->bss_loss_tmo =
		FUNC8(&priv->bss_loss_work);
	state->join_tmo =
		FUNC8(&priv->join_timeout);
	state->direct_probe =
		FUNC8(&priv->scan.probe_work);
	state->link_id_gc =
		FUNC8(&priv->link_id_gc_work);

	FUNC3(&priv->clear_recent_scan_work);
	FUNC2(&priv->recent_scan, 0);

	/* Enable beacon skipping */
	if (priv->join_status == CW1200_JOIN_STATUS_STA &&
	    priv->join_dtim_period &&
	    !priv->has_multicast_subscription) {
		state->beacon_skipping = true;
		FUNC24(priv,
					     priv->join_dtim_period,
					     CW1200_BEACON_SKIPPING_MULTIPLIER * priv->join_dtim_period);
	}

	/* Stop serving thread */
	if (FUNC5(priv))
		goto revert5;

	ret = FUNC18(&priv->mcast_timeout);
	if (ret)
		goto revert6;

	/* Store suspend state */
	pm_state->suspend_state = state;

	/* Enable IRQ wake */
	ret = priv->hwbus_ops->power_mgmt(priv->hwbus_priv, true);
	if (ret) {
		FUNC22(priv->hw->wiphy,
			  "PM request failed: %d. WoW is disabled.\n", ret);
		FUNC9(hw);
		return -EBUSY;
	}

	/* Force resume if event is coming from the device. */
	if (FUNC1(&priv->bh_rx)) {
		FUNC9(hw);
		return -EAGAIN;
	}

	return 0;

revert6:
	FUNC0(FUNC4(priv));
revert5:
	FUNC6(priv, &priv->bss_loss_work,
			   state->bss_loss_tmo);
	FUNC6(priv, &priv->join_timeout,
			   state->join_tmo);
	FUNC6(priv, &priv->scan.probe_work,
			   state->direct_probe);
	FUNC6(priv, &priv->link_id_gc_work,
			   state->link_id_gc);
revert4:
	FUNC11(state);
revert3:
	FUNC26(priv, &cw1200_udp_port_filter_off);
	FUNC25(priv, &cw1200_ether_type_filter_off);
revert2:
	FUNC27(priv);
	FUNC19(&priv->scan.lock);
revert1:
	FUNC14(&priv->conf_mutex);
	return -EBUSY;
}
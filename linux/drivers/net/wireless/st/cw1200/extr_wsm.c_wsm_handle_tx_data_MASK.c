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
typedef  int /*<<< orphan*/  u8 ;
struct wsm_tx {int /*<<< orphan*/  packet_id; int /*<<< orphan*/  queue_id; } ;
struct TYPE_8__ {TYPE_3__* hw_key; } ;
struct ieee80211_tx_info {TYPE_4__ control; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct cw1200_txpriv {size_t offset; int /*<<< orphan*/  raw_link_id; } ;
struct cw1200_queue {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  probe_work; } ;
struct cw1200_common {int mode; int link_id_map; scalar_t__ wep_default_key_id; int /*<<< orphan*/  wep_key_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  pending_frame_id; TYPE_2__ scan; int /*<<< orphan*/  unjoin_work; int /*<<< orphan*/  bss_loss_lock; int /*<<< orphan*/  bss_loss_confirm_id; scalar_t__ bss_loss_state; int /*<<< orphan*/  join_status; TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {scalar_t__ keyidx; scalar_t__ cipher; } ;
struct TYPE_5__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CW1200_JOIN_STATUS_IBSS ; 
 int /*<<< orphan*/  CW1200_JOIN_STATUS_MONITOR ; 
 int /*<<< orphan*/  CW1200_JOIN_STATUS_PRE_STA ; 
 int /*<<< orphan*/  CW1200_MAX_REQUEUE_ATTEMPTS ; 
#define  NL80211_IFTYPE_ADHOC 132 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ; 
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ; 
 int /*<<< orphan*/  WSM_QUEUE_VOICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC15 (struct cw1200_common*) ; 

__attribute__((used)) static bool FUNC16(struct cw1200_common *priv,
			       struct wsm_tx *wsm,
			       const struct ieee80211_tx_info *tx_info,
			       const struct cw1200_txpriv *txpriv,
			       struct cw1200_queue *queue)
{
	bool handled = false;
	const struct ieee80211_hdr *frame =
		(struct ieee80211_hdr *)&((u8 *)wsm)[txpriv->offset];
	__le16 fctl = frame->frame_control;
	enum {
		do_probe,
		do_drop,
		do_wep,
		do_tx,
	} action = do_tx;

	switch (priv->mode) {
	case NL80211_IFTYPE_STATION:
		if (priv->join_status == CW1200_JOIN_STATUS_MONITOR)
			action = do_tx;
		else if (priv->join_status < CW1200_JOIN_STATUS_PRE_STA)
			action = do_drop;
		break;
	case NL80211_IFTYPE_AP:
		if (!priv->join_status) {
			action = do_drop;
		} else if (!(FUNC0(txpriv->raw_link_id) &
			     (FUNC0(0) | priv->link_id_map))) {
			FUNC13(priv->hw->wiphy,
				   "A frame with expired link id is dropped.\n");
			action = do_drop;
		}
		if (FUNC2(wsm->packet_id) >
				CW1200_MAX_REQUEUE_ATTEMPTS) {
			/* HACK!!! WSM324 firmware has tendency to requeue
			 * multicast frames in a loop, causing performance
			 * drop and high power consumption of the driver.
			 * In this situation it is better just to drop
			 * the problematic frame.
			 */
			FUNC13(priv->hw->wiphy,
				   "Too many attempts to requeue a frame; dropped.\n");
			action = do_drop;
		}
		break;
	case NL80211_IFTYPE_ADHOC:
		if (priv->join_status != CW1200_JOIN_STATUS_IBSS)
			action = do_drop;
		break;
	case NL80211_IFTYPE_MESH_POINT:
		action = do_tx; /* TODO:  Test me! */
		break;
	case NL80211_IFTYPE_MONITOR:
	default:
		action = do_drop;
		break;
	}

	if (action == do_tx) {
		if (FUNC6(fctl)) {
			FUNC11(&priv->bss_loss_lock);
			if (priv->bss_loss_state) {
				priv->bss_loss_confirm_id = wsm->packet_id;
				wsm->queue_id = WSM_QUEUE_VOICE;
			}
			FUNC12(&priv->bss_loss_lock);
		} else if (FUNC7(fctl)) {
			action = do_probe;
		} else if (FUNC5(fctl) &&
			   priv->mode != NL80211_IFTYPE_AP) {
			FUNC8("[WSM] Issue unjoin command due to tx deauth.\n");
			FUNC14(priv);
			if (FUNC10(priv->workqueue,
				       &priv->unjoin_work) <= 0)
				FUNC15(priv);
		} else if (FUNC4(fctl) &&
			   tx_info->control.hw_key &&
			   tx_info->control.hw_key->keyidx != priv->wep_default_key_id &&
			   (tx_info->control.hw_key->cipher == WLAN_CIPHER_SUITE_WEP40 ||
			    tx_info->control.hw_key->cipher == WLAN_CIPHER_SUITE_WEP104)) {
			action = do_wep;
		}
	}

	switch (action) {
	case do_probe:
		/* An interesting FW "feature". Device filters probe responses.
		 * The easiest way to get it back is to convert
		 * probe request into WSM start_scan command.
		 */
		FUNC8("[WSM] Convert probe request to scan.\n");
		FUNC14(priv);
		priv->pending_frame_id = wsm->packet_id;
		if (FUNC9(priv->workqueue,
				       &priv->scan.probe_work, 0) <= 0)
			FUNC15(priv);
		handled = true;
		break;
	case do_drop:
		FUNC8("[WSM] Drop frame (0x%.4X).\n", fctl);
		FUNC1(FUNC3(queue, wsm->packet_id));
		handled = true;
		break;
	case do_wep:
		FUNC8("[WSM] Issue set_default_wep_key.\n");
		FUNC14(priv);
		priv->wep_default_key_id = tx_info->control.hw_key->keyidx;
		priv->pending_frame_id = wsm->packet_id;
		if (FUNC10(priv->workqueue, &priv->wep_key_work) <= 0)
			FUNC15(priv);
		handled = true;
		break;
	case do_tx:
		FUNC8("[WSM] Transmit frame.\n");
		break;
	default:
		/* Do nothing */
		break;
	}
	return handled;
}
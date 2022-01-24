#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wsm_tx_confirm {scalar_t__ packet_id; scalar_t__ status; int ack_failures; int flags; } ;
struct wsm_suspend_resume {int link_id; int stop; int multicast; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_10__ {TYPE_4__* hw_key; } ;
struct TYPE_8__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {TYPE_5__ control; TYPE_3__ status; int /*<<< orphan*/  flags; } ;
struct cw1200_txpriv {int dummy; } ;
struct cw1200_queue {int dummy; } ;
struct cw1200_common {scalar_t__ mode; int buffered_multicasts; scalar_t__ bss_loss_confirm_id; int /*<<< orphan*/  bss_loss_lock; scalar_t__ bss_loss_state; int /*<<< orphan*/  ht_info; int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/  multicast_start_work; int /*<<< orphan*/  workqueue; scalar_t__ sta_asleep_mask; TYPE_1__* hw; struct cw1200_queue* tx_queue; } ;
struct TYPE_9__ {scalar_t__ cipher; scalar_t__ icv_len; } ;
struct TYPE_7__ {int count; int flags; int idx; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_MAX_RATES ; 
 size_t IEEE80211_TX_RC_GREEN_FIELD ; 
 int IEEE80211_TX_RC_MCS ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 scalar_t__ WSM_REQUEUE ; 
 int WSM_TX_STATUS_AGGREGATION ; 
 int WSM_TX_STATUS_REQUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 size_t FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct cw1200_queue*,scalar_t__,struct sk_buff**,struct cw1200_txpriv const**) ; 
 int /*<<< orphan*/  FUNC10 (struct cw1200_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct cw1200_common*,struct wsm_suspend_resume*) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 

void FUNC21(struct cw1200_common *priv,
			  int link_id,
			  struct wsm_tx_confirm *arg)
{
	u8 queue_id = FUNC8(arg->packet_id);
	struct cw1200_queue *queue = &priv->tx_queue[queue_id];
	struct sk_buff *skb;
	const struct cw1200_txpriv *txpriv;

	FUNC13("[TX] TX confirm: %d, %d.\n",
		 arg->status, arg->ack_failures);

	if (priv->mode == NL80211_IFTYPE_UNSPECIFIED) {
		/* STA is stopped. */
		return;
	}

	if (FUNC1(queue_id >= 4))
		return;

	if (arg->status)
		FUNC13("TX failed: %d.\n", arg->status);

	if ((arg->status == WSM_REQUEUE) &&
	    (arg->flags & WSM_TX_STATUS_REQUEUE)) {
		/* "Requeue" means "implicit suspend" */
		struct wsm_suspend_resume suspend = {
			.link_id = link_id,
			.stop = 1,
			.multicast = !link_id,
		};
		FUNC12(priv, &suspend);
		FUNC20(priv->hw->wiphy, "Requeue for link_id %d (try %d). STAs asleep: 0x%.8X\n",
			   link_id,
			   FUNC7(arg->packet_id) + 1,
			   priv->sta_asleep_mask);
		FUNC11(queue, arg->packet_id);
		FUNC17(&priv->ps_state_lock);
		if (!link_id) {
			priv->buffered_multicasts = true;
			if (priv->sta_asleep_mask) {
				FUNC14(priv->workqueue,
					   &priv->multicast_start_work);
			}
		}
		FUNC19(&priv->ps_state_lock);
	} else if (!FUNC9(queue, arg->packet_id,
					 &skb, &txpriv)) {
		struct ieee80211_tx_info *tx = FUNC0(skb);
		int tx_count = arg->ack_failures;
		u8 ht_flags = 0;
		int i;

		if (FUNC6(&priv->ht_info))
			ht_flags |= IEEE80211_TX_RC_GREEN_FIELD;

		FUNC16(&priv->bss_loss_lock);
		if (priv->bss_loss_state &&
		    arg->packet_id == priv->bss_loss_confirm_id) {
			if (arg->status) {
				/* Recovery failed */
				FUNC2(priv, 0, 0, 1);
			} else {
				/* Recovery succeeded */
				FUNC2(priv, 0, 1, 0);
			}
		}
		FUNC18(&priv->bss_loss_lock);

		if (!arg->status) {
			tx->flags |= IEEE80211_TX_STAT_ACK;
			++tx_count;
			FUNC4(priv);
			if (arg->flags & WSM_TX_STATUS_AGGREGATION) {
				/* Do not report aggregation to mac80211:
				 * it confuses minstrel a lot.
				 */
				/* tx->flags |= IEEE80211_TX_STAT_AMPDU; */
				FUNC5(priv);
			}
		} else {
			if (tx_count)
				++tx_count;
		}

		for (i = 0; i < IEEE80211_TX_MAX_RATES; ++i) {
			if (tx->status.rates[i].count >= tx_count) {
				tx->status.rates[i].count = tx_count;
				break;
			}
			tx_count -= tx->status.rates[i].count;
			if (tx->status.rates[i].flags & IEEE80211_TX_RC_MCS)
				tx->status.rates[i].flags |= ht_flags;
		}

		for (++i; i < IEEE80211_TX_MAX_RATES; ++i) {
			tx->status.rates[i].count = 0;
			tx->status.rates[i].idx = -1;
		}

		/* Pull off any crypto trailers that we added on */
		if (tx->control.hw_key) {
			FUNC15(skb, skb->len - tx->control.hw_key->icv_len);
			if (tx->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP)
				FUNC15(skb, skb->len - 8); /* MIC space */
		}
		FUNC10(queue, arg->packet_id);
	}
	/* XXX TODO:  Only wake if there are pending transmits.. */
	FUNC3(priv);
}
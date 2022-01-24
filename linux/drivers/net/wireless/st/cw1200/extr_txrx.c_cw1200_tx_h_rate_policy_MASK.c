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
struct wsm_tx {int flags; int /*<<< orphan*/  ht_tx_parameters; int /*<<< orphan*/  max_tx_rate; } ;
struct TYPE_5__ {int rate_id; } ;
struct cw1200_txinfo {TYPE_4__* rate; TYPE_3__* tx_info; TYPE_1__ txpriv; } ;
struct cw1200_common {int /*<<< orphan*/  tx_policy_upload_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  ht_info; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  hw_value; } ;
struct TYPE_6__ {int /*<<< orphan*/ * rates; } ;
struct TYPE_7__ {TYPE_2__ control; } ;

/* Variables and functions */
 int CW1200_INVALID_RATE_ID ; 
 int EFAULT ; 
 int /*<<< orphan*/  IEEE80211_TX_MAX_RATES ; 
 int IEEE80211_TX_RC_MCS ; 
 int /*<<< orphan*/  WSM_HT_TX_GREENFIELD ; 
 int /*<<< orphan*/  WSM_HT_TX_MIXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cw1200_common*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC9 (struct cw1200_common*) ; 

__attribute__((used)) static int
FUNC10(struct cw1200_common *priv,
			struct cw1200_txinfo *t,
			struct wsm_tx *wsm)
{
	bool tx_policy_renew = false;

	t->txpriv.rate_id = FUNC7(priv,
		t->tx_info->control.rates, IEEE80211_TX_MAX_RATES,
		&tx_policy_renew);
	if (t->txpriv.rate_id == CW1200_INVALID_RATE_ID)
		return -EFAULT;

	wsm->flags |= t->txpriv.rate_id << 4;

	t->rate = FUNC1(priv,
		&t->tx_info->control.rates[0]),
	wsm->max_tx_rate = t->rate->hw_value;
	if (t->rate->flags & IEEE80211_TX_RC_MCS) {
		if (FUNC2(&priv->ht_info))
			wsm->ht_tx_parameters |=
				FUNC0(WSM_HT_TX_GREENFIELD);
		else
			wsm->ht_tx_parameters |=
				FUNC0(WSM_HT_TX_MIXED);
	}

	if (tx_policy_renew) {
		FUNC5("[TX] TX policy renew.\n");
		/* It's not so optimal to stop TX queues every now and then.
		 * Better to reimplement task scheduling with
		 * a counter. TODO.
		 */
		FUNC8(priv);
		FUNC3(priv);
		if (FUNC6(priv->workqueue,
			       &priv->tx_policy_upload_work) <= 0) {
			FUNC4(priv);
			FUNC9(priv);
		}
	}
	return 0;
}
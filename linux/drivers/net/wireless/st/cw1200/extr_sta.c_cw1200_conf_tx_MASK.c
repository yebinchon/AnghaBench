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
typedef  size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int /*<<< orphan*/  uapsd; int /*<<< orphan*/  txop; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {size_t queues; struct cw1200_common* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  uapsd_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * params; } ;
struct cw1200_common {scalar_t__ mode; scalar_t__ join_status; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  powersave_mode; TYPE_1__ uapsd_info; scalar_t__ setbssparams_done; int /*<<< orphan*/  edca; TYPE_2__ tx_queue_params; } ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_STA ; 
 int EINVAL ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct cw1200_common*,int /*<<< orphan*/ *,size_t) ; 

int FUNC9(struct ieee80211_hw *dev, struct ieee80211_vif *vif,
		   u16 queue, const struct ieee80211_tx_queue_params *params)
{
	struct cw1200_common *priv = dev->priv;
	int ret = 0;
	/* To prevent re-applying PM request OID again and again*/
	bool old_uapsd_flags;

	FUNC5(&priv->conf_mutex);

	if (queue < dev->queues) {
		old_uapsd_flags = FUNC4(priv->uapsd_info.uapsd_flags);

		FUNC1(&priv->tx_queue_params, queue, 0, 0, 0);
		ret = FUNC8(priv,
					      &priv->tx_queue_params.params[queue], queue);
		if (ret) {
			ret = -EINVAL;
			goto out;
		}

		FUNC0(&priv->edca, queue, params->aifs,
			     params->cw_min, params->cw_max,
			     params->txop, 0xc8,
			     params->uapsd);
		ret = FUNC7(priv, &priv->edca);
		if (ret) {
			ret = -EINVAL;
			goto out;
		}

		if (priv->mode == NL80211_IFTYPE_STATION) {
			ret = FUNC3(priv, &priv->edca);
			if (!ret && priv->setbssparams_done &&
			    (priv->join_status == CW1200_JOIN_STATUS_STA) &&
			    (old_uapsd_flags != FUNC4(priv->uapsd_info.uapsd_flags)))
				ret = FUNC2(priv, &priv->powersave_mode);
		}
	} else {
		ret = -EINVAL;
	}

out:
	FUNC6(&priv->conf_mutex);
	return ret;
}
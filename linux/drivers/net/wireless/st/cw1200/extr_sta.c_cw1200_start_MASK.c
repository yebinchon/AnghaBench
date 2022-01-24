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
struct ieee80211_hw {TYPE_1__* wiphy; struct cw1200_common* priv; } ;
struct cw1200_common {int setbssparams_done; int wep_default_key_id; int cqm_beacon_loss_count; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  mode; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  edca; int /*<<< orphan*/  pm_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cw1200_common*,int /*<<< orphan*/ *) ; 

int FUNC8(struct ieee80211_hw *dev)
{
	struct cw1200_common *priv = dev->priv;
	int ret = 0;

	FUNC1(&priv->pm_state, HZ);

	FUNC5(&priv->conf_mutex);

	/* default EDCA */
	FUNC0(&priv->edca, 0, 0x0002, 0x0003, 0x0007, 47, 0xc8, false);
	FUNC0(&priv->edca, 1, 0x0002, 0x0007, 0x000f, 94, 0xc8, false);
	FUNC0(&priv->edca, 2, 0x0003, 0x000f, 0x03ff, 0, 0xc8, false);
	FUNC0(&priv->edca, 3, 0x0007, 0x000f, 0x03ff, 0, 0xc8, false);
	ret = FUNC7(priv, &priv->edca);
	if (ret)
		goto out;

	ret = FUNC2(priv, &priv->edca);
	if (ret)
		goto out;

	priv->setbssparams_done = false;

	FUNC4(priv->mac_addr, dev->wiphy->perm_addr, ETH_ALEN);
	priv->mode = NL80211_IFTYPE_MONITOR;
	priv->wep_default_key_id = -1;

	priv->cqm_beacon_loss_count = 10;

	ret = FUNC3(priv);
	if (ret)
		goto out;

out:
	FUNC6(&priv->conf_mutex);
	return ret;
}
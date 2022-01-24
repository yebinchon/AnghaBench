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
typedef  int u32 ;
struct rtl8187_priv {int /*<<< orphan*/  conf_mutex; TYPE_2__* map; TYPE_1__* rf; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rtl8187_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  BEACON_INTERVAL_TIME; int /*<<< orphan*/  BEACON_INTERVAL; int /*<<< orphan*/  ATIMTR_INTERVAL; int /*<<< orphan*/  ATIM_WND; int /*<<< orphan*/  TX_CONF; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_chan ) (struct ieee80211_hw*,struct ieee80211_conf*) ;} ;

/* Variables and functions */
 int RTL818X_TX_CONF_LOOPBACK_MAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,struct ieee80211_conf*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *dev, u32 changed)
{
	struct rtl8187_priv *priv = dev->priv;
	struct ieee80211_conf *conf = &dev->conf;
	u32 reg;

	FUNC1(&priv->conf_mutex);
	reg = FUNC3(priv, &priv->map->TX_CONF);
	/* Enable TX loopback on MAC level to avoid TX during channel
	 * changes, as this has be seen to causes problems and the
	 * card will stop work until next reset
	 */
	FUNC5(priv, &priv->map->TX_CONF,
			  reg | RTL818X_TX_CONF_LOOPBACK_MAC);
	priv->rf->set_chan(dev, conf);
	FUNC0(10);
	FUNC5(priv, &priv->map->TX_CONF, reg);

	FUNC4(priv, &priv->map->ATIM_WND, 2);
	FUNC4(priv, &priv->map->ATIMTR_INTERVAL, 100);
	FUNC4(priv, &priv->map->BEACON_INTERVAL, 100);
	FUNC4(priv, &priv->map->BEACON_INTERVAL_TIME, 100);
	FUNC2(&priv->conf_mutex);
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct rtl8187_priv {int /*<<< orphan*/  work; int /*<<< orphan*/  is_rtl8187b; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  anchored; TYPE_3__ b_tx_status; TYPE_2__* map; TYPE_1__* rf; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  EEPROM_CMD; int /*<<< orphan*/  CONFIG4; int /*<<< orphan*/  CMD; int /*<<< orphan*/  INT_MASK; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int RTL818X_CMD_RX_ENABLE ; 
 int RTL818X_CMD_TX_ENABLE ; 
 int RTL818X_CONFIG4_VCOOFF ; 
 int RTL818X_EEPROM_CMD_CONFIG ; 
 int RTL818X_EEPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8187_priv*,int) ; 
 int FUNC5 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8187_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *dev)
{
	struct rtl8187_priv *priv = dev->priv;
	struct sk_buff *skb;
	u32 reg;

	FUNC2(&priv->conf_mutex);
	FUNC6(priv, &priv->map->INT_MASK, 0);

	reg = FUNC5(priv, &priv->map->CMD);
	reg &= ~RTL818X_CMD_TX_ENABLE;
	reg &= ~RTL818X_CMD_RX_ENABLE;
	FUNC7(priv, &priv->map->CMD, reg);

	priv->rf->stop(dev);
	FUNC4(priv, false);

	FUNC7(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
	reg = FUNC5(priv, &priv->map->CONFIG4);
	FUNC7(priv, &priv->map->CONFIG4, reg | RTL818X_CONFIG4_VCOOFF);
	FUNC7(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

	while ((skb = FUNC8(&priv->b_tx_status.queue)))
		FUNC1(skb);

	FUNC10(&priv->anchored);
	FUNC3(&priv->conf_mutex);

	if (!priv->is_rtl8187b)
		FUNC0(&priv->work);
}
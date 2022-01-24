#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;

/* Variables and functions */
 int BEACON_ATIM ; 
 int BEACON_DISABLE_TSF_UPDATE ; 
 int BEACON_FUNCTION_ENABLE ; 
 int EOPNOTSUPP ; 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  REG_BEACON_CTRL ; 
 int FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif)
{
	struct rtl8xxxu_priv *priv = hw->priv;
	int ret;
	u8 val8;

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		FUNC2(priv);

		val8 = FUNC0(priv, REG_BEACON_CTRL);
		val8 |= BEACON_ATIM | BEACON_FUNCTION_ENABLE |
			BEACON_DISABLE_TSF_UPDATE;
		FUNC3(priv, REG_BEACON_CTRL, val8);
		ret = 0;
		break;
	default:
		ret = -EOPNOTSUPP;
	}

	FUNC1(priv, vif->type);

	return ret;
}
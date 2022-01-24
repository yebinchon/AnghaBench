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
typedef  int u8 ;
typedef  int u16 ;
struct rtl8180_priv {scalar_t__ chip_family; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  FEMR; int /*<<< orphan*/  CONFIG3; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FEMR_SE ; 
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8187SE ; 
 int FUNC0 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;
	u16 reg16;
	u8 reg8;

	reg8 = FUNC1(priv, &priv->map->CONFIG3);
	reg8 |= 1 << 1;
	FUNC3(priv, &priv->map->CONFIG3, reg8);

	if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE) {
		FUNC2(priv, FEMR_SE, 0xffff);
	} else {
		reg16 = FUNC0(priv, &priv->map->FEMR);
		reg16 |= (1 << 15) | (1 << 14) | (1 << 4);
		FUNC2(priv, &priv->map->FEMR, reg16);
	}

}
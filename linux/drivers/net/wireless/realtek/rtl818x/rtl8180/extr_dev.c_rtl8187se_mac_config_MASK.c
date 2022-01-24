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
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  PHY_PR; } ;

/* Variables and functions */
 int /*<<< orphan*/  PI_DATA_REG ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SI_DATA_REG ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8180_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8180_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;
	u8 reg;

	FUNC6(priv, FUNC2(0x1F0), 0);
	FUNC3(priv, FUNC2(0x1F0));
	FUNC6(priv, FUNC2(0x1F4), 0);
	FUNC3(priv, FUNC2(0x1F4));
	FUNC7(priv, FUNC0(0x1F8), 0);
	FUNC4(priv, FUNC0(0x1F8));
	/* Enable DA10 TX power saving */
	reg = FUNC4(priv, &priv->map->PHY_PR);
	FUNC7(priv, &priv->map->PHY_PR, reg | 0x04);
	/* Power */
	FUNC5(priv, PI_DATA_REG, 0x1000);
	FUNC5(priv, SI_DATA_REG, 0x1000);
	/* AFE - default to power ON */
	FUNC5(priv, FUNC1(0x370), 0x0560);
	FUNC5(priv, FUNC1(0x372), 0x0560);
	FUNC5(priv, FUNC1(0x374), 0x0DA4);
	FUNC5(priv, FUNC1(0x376), 0x0DA4);
	FUNC5(priv, FUNC1(0x378), 0x0560);
	FUNC5(priv, FUNC1(0x37A), 0x0560);
	FUNC5(priv, FUNC1(0x37C), 0x00EC);
	FUNC5(priv, FUNC1(0x37E), 0x00EC);
	FUNC7(priv, FUNC0(0x24E), 0x01);
	/* unknown, needed for suspend to RAM resume */
	FUNC7(priv, FUNC0(0x0A), 0x72);
}
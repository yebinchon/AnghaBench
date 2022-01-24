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
struct rtl8180_priv {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8225SE_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  RTL8225SE_ANAPARAM_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8180_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8180_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(struct ieee80211_hw *dev)
{
	/* checked for 8187se */
	struct rtl8180_priv *priv = dev->priv;

	/* turn off BB RXIQ matrix to cut off rx signal */
	FUNC3(dev, 0x10, 0x00);
	FUNC3(dev, 0x12, 0x00);
	/* turn off RF */
	FUNC2(dev, 0x04, 0x0000);
	FUNC2(dev, 0x00, 0x0000);

	FUNC4(1000, 5000);
	/* turn off A/D and D/A */
	FUNC0(priv, RTL8225SE_ANAPARAM_OFF);
	FUNC1(priv, RTL8225SE_ANAPARAM2_OFF);
}
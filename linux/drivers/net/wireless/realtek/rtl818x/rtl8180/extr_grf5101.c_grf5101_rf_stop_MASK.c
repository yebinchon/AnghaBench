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
typedef  int u32 ;
struct rtl8180_priv {int anaparam; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8180_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *dev)
{
	struct rtl8180_priv *priv = dev->priv;
	u32 anaparam;

	anaparam = priv->anaparam;
	anaparam &= 0x000fffff;
	anaparam |= 0x3f900000;
	FUNC0(priv, anaparam);

	FUNC1(dev, 0x07, 0x0);
	FUNC1(dev, 0x1f, 0x45);
	FUNC1(dev, 0x1f, 0x5);
	FUNC1(dev, 0x00, 0x8e4);
}
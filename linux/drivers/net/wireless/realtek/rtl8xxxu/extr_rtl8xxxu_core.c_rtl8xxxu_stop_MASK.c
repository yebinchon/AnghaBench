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
struct rtl8xxxu_priv {int shutdown; scalar_t__ usb_interrupts; TYPE_1__* fops; int /*<<< orphan*/  int_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  rx_anchor; int /*<<< orphan*/  rx_urb_lock; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_rf ) (struct rtl8xxxu_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RXFLTMAP0 ; 
 int /*<<< orphan*/  REG_RXFLTMAP2 ; 
 int /*<<< orphan*/  REG_TXPAUSE ; 
 int /*<<< orphan*/  REG_USB_HIMR ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl8xxxu_priv *priv = hw->priv;
	unsigned long flags;

	FUNC4(priv, REG_TXPAUSE, 0xff);

	FUNC2(priv, REG_RXFLTMAP0, 0x0000);
	FUNC2(priv, REG_RXFLTMAP2, 0x0000);

	FUNC5(&priv->rx_urb_lock, flags);
	priv->shutdown = true;
	FUNC6(&priv->rx_urb_lock, flags);

	FUNC8(&priv->rx_anchor);
	FUNC8(&priv->tx_anchor);
	if (priv->usb_interrupts)
		FUNC8(&priv->int_anchor);

	FUNC4(priv, REG_TXPAUSE, 0xff);

	priv->fops->disable_rf(priv);

	/*
	 * Disable interrupts
	 */
	if (priv->usb_interrupts)
		FUNC3(priv, REG_USB_HIMR, 0);

	FUNC0(priv);
	FUNC1(priv);
}
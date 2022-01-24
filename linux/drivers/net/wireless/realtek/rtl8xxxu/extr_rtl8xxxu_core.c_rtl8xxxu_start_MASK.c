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
struct rtl8xxxu_tx_urb {int /*<<< orphan*/  list; struct ieee80211_hw* hw; int /*<<< orphan*/  urb; } ;
struct rtl8xxxu_rx_urb {struct ieee80211_hw* hw; int /*<<< orphan*/  list; int /*<<< orphan*/  urb; } ;
struct rtl8xxxu_priv {int tx_stopped; int shutdown; int /*<<< orphan*/  rx_urb_lock; int /*<<< orphan*/  tx_urb_free_count; int /*<<< orphan*/  tx_urb_free_list; scalar_t__ usb_interrupts; TYPE_1__* fops; int /*<<< orphan*/  int_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  rx_anchor; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_rf ) (struct rtl8xxxu_priv*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_OFDM0_XA_AGC_CORE1 ; 
 int /*<<< orphan*/  REG_RXFLTMAP0 ; 
 int /*<<< orphan*/  REG_RXFLTMAP2 ; 
 int RTL8XXXU_RX_URBS ; 
 int RTL8XXXU_TX_URBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8xxxu_priv*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct rtl8xxxu_priv*,struct rtl8xxxu_rx_urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8xxxu_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw)
{
	struct rtl8xxxu_priv *priv = hw->priv;
	struct rtl8xxxu_rx_urb *rx_urb;
	struct rtl8xxxu_tx_urb *tx_urb;
	unsigned long flags;
	int ret, i;

	ret = 0;

	FUNC1(&priv->rx_anchor);
	FUNC1(&priv->tx_anchor);
	FUNC1(&priv->int_anchor);

	priv->fops->enable_rf(priv);
	if (priv->usb_interrupts) {
		ret = FUNC5(hw);
		if (ret)
			goto exit;
	}

	for (i = 0; i < RTL8XXXU_TX_URBS; i++) {
		tx_urb = FUNC2(sizeof(struct rtl8xxxu_tx_urb), GFP_KERNEL);
		if (!tx_urb) {
			if (!i)
				ret = -ENOMEM;

			goto error_out;
		}
		FUNC12(&tx_urb->urb);
		FUNC0(&tx_urb->list);
		tx_urb->hw = hw;
		FUNC3(&tx_urb->list, &priv->tx_urb_free_list);
		priv->tx_urb_free_count++;
	}

	priv->tx_stopped = false;

	FUNC9(&priv->rx_urb_lock, flags);
	priv->shutdown = false;
	FUNC10(&priv->rx_urb_lock, flags);

	for (i = 0; i < RTL8XXXU_RX_URBS; i++) {
		rx_urb = FUNC2(sizeof(struct rtl8xxxu_rx_urb), GFP_KERNEL);
		if (!rx_urb) {
			if (!i)
				ret = -ENOMEM;

			goto error_out;
		}
		FUNC12(&rx_urb->urb);
		FUNC0(&rx_urb->list);
		rx_urb->hw = hw;

		ret = FUNC6(priv, rx_urb);
	}
exit:
	/*
	 * Accept all data and mgmt frames
	 */
	FUNC7(priv, REG_RXFLTMAP2, 0xffff);
	FUNC7(priv, REG_RXFLTMAP0, 0xffff);

	FUNC8(priv, REG_OFDM0_XA_AGC_CORE1, 0x6954341e);

	return ret;

error_out:
	FUNC4(priv);
	/*
	 * Disable all data and mgmt frames
	 */
	FUNC7(priv, REG_RXFLTMAP2, 0x0000);
	FUNC7(priv, REG_RXFLTMAP0, 0x0000);

	return ret;
}
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
typedef  int u32 ;
struct rtl8180_priv {int /*<<< orphan*/  lock; TYPE_1__* map; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct rtl8180_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  INT_TIMEOUT; int /*<<< orphan*/  INT_STATUS_SE; } ;

/* Variables and functions */
 int IMR_RER ; 
 int IMR_ROK ; 
 int IMR_RQOSOK ; 
 int IMR_TBDER ; 
 int IMR_TBDOK ; 
 int IMR_TBEDER ; 
 int IMR_TBEDOK ; 
 int IMR_TBKDER ; 
 int IMR_TBKDOK ; 
 int IMR_TIMEOUT1 ; 
 int IMR_TVIDER ; 
 int IMR_TVIDOK ; 
 int IMR_TVODER ; 
 int IMR_TVODOK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTL818X_INT_SE_RX_DU ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int FUNC3 (struct rtl8180_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8180_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct ieee80211_hw *dev = dev_id;
	struct rtl8180_priv *priv = dev->priv;
	u32 reg;
	unsigned long flags;
	static int desc_err;

	FUNC5(&priv->lock, flags);
	/* Note: 32-bit interrupt status */
	reg = FUNC3(priv, &priv->map->INT_STATUS_SE);
	if (FUNC7(reg == 0xFFFFFFFF)) {
		FUNC6(&priv->lock, flags);
		return IRQ_HANDLED;
	}

	FUNC4(priv, &priv->map->INT_STATUS_SE, reg);

	if (reg & IMR_TIMEOUT1)
		FUNC4(priv, &priv->map->INT_TIMEOUT, 0);

	if (reg & (IMR_TBDOK | IMR_TBDER))
		FUNC2(dev, 4);

	if (reg & (IMR_TVODOK | IMR_TVODER))
		FUNC2(dev, 0);

	if (reg & (IMR_TVIDOK | IMR_TVIDER))
		FUNC2(dev, 1);

	if (reg & (IMR_TBEDOK | IMR_TBEDER))
		FUNC2(dev, 2);

	if (reg & (IMR_TBKDOK | IMR_TBKDER))
		FUNC2(dev, 3);

	if (reg & (IMR_ROK | IMR_RER | RTL818X_INT_SE_RX_DU | IMR_RQOSOK))
		FUNC1(dev);
	/* The interface sometimes generates several RX DMA descriptor errors
	 * at startup. Do not report these.
	 */
	if ((reg & RTL818X_INT_SE_RX_DU) && desc_err++ > 2)
		if (FUNC0())
			FUNC8(dev->wiphy, "No RX DMA Descriptor avail\n");

	FUNC6(&priv->lock, flags);
	return IRQ_HANDLED;
}
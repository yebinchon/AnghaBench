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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; int /*<<< orphan*/  mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; int /*<<< orphan*/  cal_work; } ;
struct ieee80211_hw {struct mt76x02_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_REMOVED ; 
 int /*<<< orphan*/  MT76_STATE_RUNNING ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BUSY ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_TX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw)
{
	struct mt76x02_dev *dev = hw->priv;

	FUNC1(MT76_STATE_RUNNING, &dev->mt76.state);
	FUNC0(&dev->cal_work);
	FUNC0(&dev->mt76.mac_work);
	FUNC4(&dev->mt76);
	FUNC5(dev);

	if (FUNC7(MT76_REMOVED, &dev->mt76.state))
		return;

	if (!FUNC3(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_BUSY, 0, 1000))
		FUNC2(dev->mt76.dev, "TX DMA did not stop\n");

	FUNC6(dev);

	if (!FUNC3(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_RX_BUSY, 0, 1000))
		FUNC2(dev->mt76.dev, "RX DMA did not stop\n");
}
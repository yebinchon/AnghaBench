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
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 int /*<<< orphan*/  MT_BEACON_TIME_CFG ; 
 int MT_BEACON_TIME_CFG_BEACON_TX ; 
 int MT_BEACON_TIME_CFG_SYNC_MODE ; 
 int MT_BEACON_TIME_CFG_TBTT_EN ; 
 int MT_BEACON_TIME_CFG_TIMER_EN ; 
 int /*<<< orphan*/  MT_MAC_STATUS ; 
 int /*<<< orphan*/  MT_MAC_STATUS_RX ; 
 int /*<<< orphan*/  MT_MAC_STATUS_TX ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int MT_RXQ_STA ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BUSY ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_TX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt7601u_dev*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mt7601u_dev *dev)
{
	int i, ok;

	if (FUNC5(MT7601U_STATE_REMOVED, &dev->state))
		return;

	FUNC2(dev, MT_BEACON_TIME_CFG, MT_BEACON_TIME_CFG_TIMER_EN |
		   MT_BEACON_TIME_CFG_SYNC_MODE | MT_BEACON_TIME_CFG_TBTT_EN |
		   MT_BEACON_TIME_CFG_BEACON_TX);

	if (!FUNC3(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_TX_BUSY, 0, 1000))
		FUNC0(dev->dev, "Warning: TX DMA did not stop!\n");

	/* Page count on TxQ */
	i = 200;
	while (i-- && ((FUNC4(dev, 0x0438) & 0xffffffff) ||
		       (FUNC4(dev, 0x0a30) & 0x000000ff) ||
		       (FUNC4(dev, 0x0a34) & 0x00ff00ff)))
		FUNC1(10);

	if (!FUNC3(dev, MT_MAC_STATUS, MT_MAC_STATUS_TX, 0, 1000))
		FUNC0(dev->dev, "Warning: MAC TX did not stop!\n");

	FUNC2(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_RX |
					 MT_MAC_SYS_CTRL_ENABLE_TX);

	/* Page count on RxQ */
	ok = 0;
	i = 200;
	while (i--) {
		if (!(FUNC4(dev, MT_RXQ_STA) & 0x00ff0000) &&
		    !FUNC4(dev, 0x0a30) &&
		    !FUNC4(dev, 0x0a34)) {
			if (ok++ > 5)
				break;
			continue;
		}
		FUNC1(1);
	}

	if (!FUNC3(dev, MT_MAC_STATUS, MT_MAC_STATUS_RX, 0, 1000))
		FUNC0(dev->dev, "Warning: MAC RX did not stop!\n");

	if (!FUNC3(dev, MT_USB_DMA_CFG, MT_USB_DMA_CFG_RX_BUSY, 0, 1000))
		FUNC0(dev->dev, "Warning: RX DMA did not stop!\n");
}
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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CORE ; 
 int EIO ; 
 int /*<<< orphan*/  IBI ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MT_MAC_STATUS ; 
 int /*<<< orphan*/  MT_MAC_STATUS_RX ; 
 int MT_MAC_STATUS_TX ; 
 int MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int MT_TXOP_CTRL_CFG ; 
 int MT_TXOP_ED_CCA_EN ; 
 int MT_TXOP_HLDR_ET ; 
 int MT_TXOP_HLDR_TX40M_BLK_EN ; 
 int MT_TX_RTS_CFG ; 
 int MT_TX_RTS_CFG_RETRY_LIMIT ; 
 int MT_USB_DMA_CFG_RX_BUSY ; 
 int MT_USB_DMA_CFG_TX_BUSY ; 
 int /*<<< orphan*/  MT_USB_U3DMA_CFG ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

int FUNC12(struct mt76x02_dev *dev)
{
	int i, count = 0, val;
	bool stopped = false;
	u32 rts_cfg;

	if (FUNC10(MT76_REMOVED, &dev->mt76.state))
		return -EIO;

	rts_cfg = FUNC7(dev, MT_TX_RTS_CFG);
	FUNC9(dev, MT_TX_RTS_CFG, rts_cfg & ~MT_TX_RTS_CFG_RETRY_LIMIT);

	FUNC5(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
	FUNC5(dev, MT_TXOP_HLDR_ET, MT_TXOP_HLDR_TX40M_BLK_EN);

	/* wait tx dma to stop */
	for (i = 0; i < 2000; i++) {
		val = FUNC7(dev, FUNC2(CFG, MT_USB_U3DMA_CFG));
		if (!(val & MT_USB_DMA_CFG_TX_BUSY) && i > 10)
			break;
		FUNC11(50, 100);
	}

	/* page count on TxQ */
	for (i = 0; i < 200; i++) {
		if (!(FUNC7(dev, 0x0438) & 0xffffffff) &&
		    !(FUNC7(dev, 0x0a30) & 0x000000ff) &&
		    !(FUNC7(dev, 0x0a34) & 0xff00ff00))
			break;
		FUNC11(10, 20);
	}

	/* disable tx-rx */
	FUNC5(dev, MT_MAC_SYS_CTRL,
		   MT_MAC_SYS_CTRL_ENABLE_RX |
		   MT_MAC_SYS_CTRL_ENABLE_TX);

	/* Wait for MAC to become idle */
	for (i = 0; i < 1000; i++) {
		if (!(FUNC7(dev, MT_MAC_STATUS) & MT_MAC_STATUS_TX) &&
		    !FUNC7(dev, FUNC1(IBI, 12))) {
			stopped = true;
			break;
		}
		FUNC11(10, 20);
	}

	if (!stopped) {
		FUNC8(dev, FUNC1(CORE, 4), FUNC0(1));
		FUNC5(dev, FUNC1(CORE, 4), FUNC0(1));

		FUNC8(dev, FUNC1(CORE, 4), FUNC0(0));
		FUNC5(dev, FUNC1(CORE, 4), FUNC0(0));
	}

	/* page count on RxQ */
	for (i = 0; i < 200; i++) {
		if (!(FUNC7(dev, 0x0430) & 0x00ff0000) &&
		    !(FUNC7(dev, 0x0a30) & 0xffffffff) &&
		    !(FUNC7(dev, 0x0a34) & 0xffffffff) &&
		    ++count > 10)
			break;
		FUNC4(50);
	}

	if (!FUNC6(dev, MT_MAC_STATUS, MT_MAC_STATUS_RX, 0, 2000))
		FUNC3(dev->mt76.dev, "MAC RX failed to stop\n");

	/* wait rx dma to stop */
	for (i = 0; i < 2000; i++) {
		val = FUNC7(dev, FUNC2(CFG, MT_USB_U3DMA_CFG));
		if (!(val & MT_USB_DMA_CFG_RX_BUSY) && i > 10)
			break;
		FUNC11(50, 100);
	}

	FUNC9(dev, MT_TX_RTS_CFG, rts_cfg);

	return 0;
}
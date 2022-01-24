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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_MAC_STATUS ; 
 int /*<<< orphan*/  MT_MAC_STATUS_RX ; 
 int /*<<< orphan*/  MT_MAC_STATUS_TX ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int MT_RXQ_STA ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int MT_TXOP_ED_CCA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mt76x02_dev*,int) ; 

void FUNC5(struct mt76x02_dev *dev)
{
	int i = 200, ok = 0;

	FUNC2(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);

	/* Page count on TxQ */
	while (i-- && ((FUNC4(dev, 0x0438) & 0xffffffff) ||
		       (FUNC4(dev, 0x0a30) & 0x000000ff) ||
		       (FUNC4(dev, 0x0a34) & 0x00ff00ff)))
		FUNC1(10);

	if (!FUNC3(dev, MT_MAC_STATUS, MT_MAC_STATUS_TX, 0, 1000))
		FUNC0(dev->mt76.dev, "Warning: MAC TX did not stop!\n");

	FUNC2(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_RX |
					 MT_MAC_SYS_CTRL_ENABLE_TX);

	/* Page count on RxQ */
	for (i = 0; i < 200; i++) {
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
		FUNC0(dev->mt76.dev, "Warning: MAC RX did not stop!\n");
}
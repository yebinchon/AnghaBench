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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_work; } ;
struct mt76x02_dev {TYPE_1__ mt76; int /*<<< orphan*/  cal_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 

__attribute__((used)) static void FUNC5(struct mt76x02_dev *dev)
{
	FUNC0(&dev->cal_work);
	FUNC0(&dev->mt76.mac_work);

	if (!FUNC3(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_TX_DMA_BUSY,
		       0, 1000))
		FUNC1(dev->mt76.dev, "TX DMA did not stop\n");
	FUNC2(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_TX_DMA_EN);

	FUNC4(dev);

	if (!FUNC3(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_RX_DMA_BUSY,
		       0, 1000))
		FUNC1(dev->mt76.dev, "TX DMA did not stop\n");
	FUNC2(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_RX_DMA_EN);
}
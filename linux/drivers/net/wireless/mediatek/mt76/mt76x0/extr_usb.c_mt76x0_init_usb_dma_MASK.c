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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_COM_REG0 ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG ; 
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_RX_DROP_OR_PAD ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev)
{
	u32 val;

	val = FUNC1(dev, MT_USB_DMA_CFG);

	val |= MT_USB_DMA_CFG_RX_BULK_EN |
	       MT_USB_DMA_CFG_TX_BULK_EN;

	/* disable AGGR_BULK_RX in order to receive one
	 * frame in each rx urb and avoid copies
	 */
	val &= ~MT_USB_DMA_CFG_RX_BULK_AGG_EN;
	FUNC2(dev, MT_USB_DMA_CFG, val);

	val = FUNC1(dev, MT_COM_REG0);
	if (val & 1)
		FUNC0(dev->mt76.dev, "MCU not ready\n");

	val = FUNC1(dev, MT_USB_DMA_CFG);

	val |= MT_USB_DMA_CFG_RX_DROP_OR_PAD;
	FUNC2(dev, MT_USB_DMA_CFG, val);
	val &= ~MT_USB_DMA_CFG_RX_DROP_OR_PAD;
	FUNC2(dev, MT_USB_DMA_CFG, val);
}
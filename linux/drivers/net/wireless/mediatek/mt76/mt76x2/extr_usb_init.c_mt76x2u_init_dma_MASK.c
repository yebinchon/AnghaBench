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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_RX_DROP_OR_PAD ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int /*<<< orphan*/  MT_USB_U3DMA_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev)
{
	u32 val = FUNC1(dev, FUNC0(CFG, MT_USB_U3DMA_CFG));

	val |= MT_USB_DMA_CFG_RX_DROP_OR_PAD |
	       MT_USB_DMA_CFG_RX_BULK_EN |
	       MT_USB_DMA_CFG_TX_BULK_EN;

	/* disable AGGR_BULK_RX in order to receive one
	 * frame in each rx urb and avoid copies
	 */
	val &= ~MT_USB_DMA_CFG_RX_BULK_AGG_EN;
	FUNC2(dev, FUNC0(CFG, MT_USB_U3DMA_CFG), val);
}
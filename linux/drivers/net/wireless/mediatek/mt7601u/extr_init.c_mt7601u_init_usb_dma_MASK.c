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
struct mt7601u_dev {int in_max_packet; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_USB_AGGR_SIZE_LIMIT ; 
 int /*<<< orphan*/  MT_USB_AGGR_TIMEOUT ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG ; 
 int MT_USB_DMA_CFG_RX_BULK_AGG_EN ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BULK_AGG_LMT ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG_RX_BULK_AGG_TOUT ; 
 int MT_USB_DMA_CFG_RX_BULK_EN ; 
 int MT_USB_DMA_CFG_TX_BULK_EN ; 
 int MT_USB_DMA_CFG_UDMA_RX_WL_DROP ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mt7601u_dev *dev)
{
	u32 val;

	val = FUNC0(MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, MT_USB_AGGR_TIMEOUT) |
	      FUNC0(MT_USB_DMA_CFG_RX_BULK_AGG_LMT,
			 MT_USB_AGGR_SIZE_LIMIT) |
	      MT_USB_DMA_CFG_RX_BULK_EN |
	      MT_USB_DMA_CFG_TX_BULK_EN;
	if (dev->in_max_packet == 512)
		val |= MT_USB_DMA_CFG_RX_BULK_AGG_EN;
	FUNC1(dev, MT_USB_DMA_CFG, val);

	val |= MT_USB_DMA_CFG_UDMA_RX_WL_DROP;
	FUNC1(dev, MT_USB_DMA_CFG, val);
	val &= ~MT_USB_DMA_CFG_UDMA_RX_WL_DROP;
	FUNC1(dev, MT_USB_DMA_CFG, val);
}
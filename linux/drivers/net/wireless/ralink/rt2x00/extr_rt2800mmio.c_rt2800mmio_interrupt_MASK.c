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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  autowake_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  pretbtt_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  txstatus_fifo; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  INT_MASK_CSR ; 
 int /*<<< orphan*/  INT_MASK_CSR_TX_FIFO_STATUS ; 
 int /*<<< orphan*/  INT_SOURCE_CSR ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_AUTO_WAKEUP ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_PRE_TBTT ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_RX_DONE ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_TBTT ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_TX_FIFO_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC11(int irq, void *dev_instance)
{
	struct rt2x00_dev *rt2x00dev = dev_instance;
	u32 reg, mask;

	/* Read status and ACK all interrupts */
	reg = FUNC4(rt2x00dev, INT_SOURCE_CSR);
	FUNC5(rt2x00dev, INT_SOURCE_CSR, reg);

	if (!reg)
		return IRQ_NONE;

	if (!FUNC10(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return IRQ_HANDLED;

	/*
	 * Since INT_MASK_CSR and INT_SOURCE_CSR use the same bits
	 * for interrupts and interrupt masks we can just use the value of
	 * INT_SOURCE_CSR to create the interrupt mask.
	 */
	mask = ~reg;

	if (FUNC2(reg, INT_SOURCE_CSR_TX_FIFO_STATUS)) {
		FUNC3(&mask, INT_MASK_CSR_TX_FIFO_STATUS, 1);
		FUNC1(rt2x00dev);
		if (!FUNC0(&rt2x00dev->txstatus_fifo))
			FUNC9(&rt2x00dev->txstatus_tasklet);
	}

	if (FUNC2(reg, INT_SOURCE_CSR_PRE_TBTT))
		FUNC8(&rt2x00dev->pretbtt_tasklet);

	if (FUNC2(reg, INT_SOURCE_CSR_TBTT))
		FUNC8(&rt2x00dev->tbtt_tasklet);

	if (FUNC2(reg, INT_SOURCE_CSR_RX_DONE))
		FUNC9(&rt2x00dev->rxdone_tasklet);

	if (FUNC2(reg, INT_SOURCE_CSR_AUTO_WAKEUP))
		FUNC9(&rt2x00dev->autowake_tasklet);

	/*
	 * Disable all interrupts for which a tasklet was scheduled right now,
	 * the tasklet will reenable the appropriate interrupts.
	 */
	FUNC6(&rt2x00dev->irqmask_lock);
	reg = FUNC4(rt2x00dev, INT_MASK_CSR);
	reg &= mask;
	FUNC5(rt2x00dev, INT_MASK_CSR, reg);
	FUNC7(&rt2x00dev->irqmask_lock);

	return IRQ_HANDLED;
}
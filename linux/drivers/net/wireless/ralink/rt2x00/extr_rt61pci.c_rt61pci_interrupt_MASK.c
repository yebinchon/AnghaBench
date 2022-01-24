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
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  autowake_tasklet; int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  INT_MASK_CSR ; 
 int /*<<< orphan*/  INT_SOURCE_CSR ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_BEACON_DONE ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_RXDONE ; 
 int /*<<< orphan*/  INT_SOURCE_CSR_TXDONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR ; 
 int /*<<< orphan*/  MCU_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  MCU_INT_SOURCE_CSR_TWAKEUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_instance)
{
	struct rt2x00_dev *rt2x00dev = dev_instance;
	u32 reg_mcu, mask_mcu;
	u32 reg, mask;

	/*
	 * Get the interrupt sources & saved to local variable.
	 * Write register value back to clear pending interrupts.
	 */
	reg_mcu = FUNC1(rt2x00dev, MCU_INT_SOURCE_CSR);
	FUNC2(rt2x00dev, MCU_INT_SOURCE_CSR, reg_mcu);

	reg = FUNC1(rt2x00dev, INT_SOURCE_CSR);
	FUNC2(rt2x00dev, INT_SOURCE_CSR, reg);

	if (!reg && !reg_mcu)
		return IRQ_NONE;

	if (!FUNC7(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return IRQ_HANDLED;

	/*
	 * Schedule tasklets for interrupt handling.
	 */
	if (FUNC0(reg, INT_SOURCE_CSR_RXDONE))
		FUNC6(&rt2x00dev->rxdone_tasklet);

	if (FUNC0(reg, INT_SOURCE_CSR_TXDONE))
		FUNC6(&rt2x00dev->txstatus_tasklet);

	if (FUNC0(reg, INT_SOURCE_CSR_BEACON_DONE))
		FUNC5(&rt2x00dev->tbtt_tasklet);

	if (FUNC0(reg_mcu, MCU_INT_SOURCE_CSR_TWAKEUP))
		FUNC6(&rt2x00dev->autowake_tasklet);

	/*
	 * Since INT_MASK_CSR and INT_SOURCE_CSR use the same bits
	 * for interrupts and interrupt masks we can just use the value of
	 * INT_SOURCE_CSR to create the interrupt mask.
	 */
	mask = reg;
	mask_mcu = reg_mcu;

	/*
	 * Disable all interrupts for which a tasklet was scheduled right now,
	 * the tasklet will reenable the appropriate interrupts.
	 */
	FUNC3(&rt2x00dev->irqmask_lock);

	reg = FUNC1(rt2x00dev, INT_MASK_CSR);
	reg |= mask;
	FUNC2(rt2x00dev, INT_MASK_CSR, reg);

	reg = FUNC1(rt2x00dev, MCU_INT_MASK_CSR);
	reg |= mask_mcu;
	FUNC2(rt2x00dev, MCU_INT_MASK_CSR, reg);

	FUNC4(&rt2x00dev->irqmask_lock);

	return IRQ_HANDLED;
}
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
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR7 ; 
 int /*<<< orphan*/  CSR7_RXDONE ; 
 int /*<<< orphan*/  CSR7_TBCN_EXPIRE ; 
 int /*<<< orphan*/  CSR7_TXDONE_ATIMRING ; 
 int /*<<< orphan*/  CSR7_TXDONE_PRIORING ; 
 int /*<<< orphan*/  CSR7_TXDONE_TXRING ; 
 int /*<<< orphan*/  CSR8 ; 
 int /*<<< orphan*/  CSR8_TXDONE_ATIMRING ; 
 int /*<<< orphan*/  CSR8_TXDONE_PRIORING ; 
 int /*<<< orphan*/  CSR8_TXDONE_TXRING ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_instance)
{
	struct rt2x00_dev *rt2x00dev = dev_instance;
	u32 reg, mask;

	/*
	 * Get the interrupt sources & saved to local variable.
	 * Write register value back to clear pending interrupts.
	 */
	reg = FUNC2(rt2x00dev, CSR7);
	FUNC3(rt2x00dev, CSR7, reg);

	if (!reg)
		return IRQ_NONE;

	if (!FUNC8(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return IRQ_HANDLED;

	mask = reg;

	/*
	 * Schedule tasklets for interrupt handling.
	 */
	if (FUNC0(reg, CSR7_TBCN_EXPIRE))
		FUNC6(&rt2x00dev->tbtt_tasklet);

	if (FUNC0(reg, CSR7_RXDONE))
		FUNC7(&rt2x00dev->rxdone_tasklet);

	if (FUNC0(reg, CSR7_TXDONE_ATIMRING) ||
	    FUNC0(reg, CSR7_TXDONE_PRIORING) ||
	    FUNC0(reg, CSR7_TXDONE_TXRING)) {
		FUNC7(&rt2x00dev->txstatus_tasklet);
		/*
		 * Mask out all txdone interrupts.
		 */
		FUNC1(&mask, CSR8_TXDONE_TXRING, 1);
		FUNC1(&mask, CSR8_TXDONE_ATIMRING, 1);
		FUNC1(&mask, CSR8_TXDONE_PRIORING, 1);
	}

	/*
	 * Disable all interrupts for which a tasklet was scheduled right now,
	 * the tasklet will reenable the appropriate interrupts.
	 */
	FUNC4(&rt2x00dev->irqmask_lock);

	reg = FUNC2(rt2x00dev, CSR8);
	reg |= mask;
	FUNC3(rt2x00dev, CSR8, reg);

	FUNC5(&rt2x00dev->irqmask_lock);



	return IRQ_HANDLED;
}
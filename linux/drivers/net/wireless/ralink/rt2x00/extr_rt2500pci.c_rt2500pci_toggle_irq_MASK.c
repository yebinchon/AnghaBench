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
struct rt2x00_dev {int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  irqmask_lock; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  CSR7 ; 
 int /*<<< orphan*/  CSR8 ; 
 int /*<<< orphan*/  CSR8_RXDONE ; 
 int /*<<< orphan*/  CSR8_TBCN_EXPIRE ; 
 int /*<<< orphan*/  CSR8_TXDONE_ATIMRING ; 
 int /*<<< orphan*/  CSR8_TXDONE_PRIORING ; 
 int /*<<< orphan*/  CSR8_TXDONE_TXRING ; 
 int STATE_RADIO_IRQ_OFF ; 
 int STATE_RADIO_IRQ_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				 enum dev_state state)
{
	int mask = (state == STATE_RADIO_IRQ_OFF);
	u32 reg;
	unsigned long flags;

	/*
	 * When interrupts are being enabled, the interrupt registers
	 * should clear the register to assure a clean state.
	 */
	if (state == STATE_RADIO_IRQ_ON) {
		reg = FUNC1(rt2x00dev, CSR7);
		FUNC2(rt2x00dev, CSR7, reg);
	}

	/*
	 * Only toggle the interrupts bits we are going to use.
	 * Non-checked interrupt bits are disabled by default.
	 */
	FUNC3(&rt2x00dev->irqmask_lock, flags);

	reg = FUNC1(rt2x00dev, CSR8);
	FUNC0(&reg, CSR8_TBCN_EXPIRE, mask);
	FUNC0(&reg, CSR8_TXDONE_TXRING, mask);
	FUNC0(&reg, CSR8_TXDONE_ATIMRING, mask);
	FUNC0(&reg, CSR8_TXDONE_PRIORING, mask);
	FUNC0(&reg, CSR8_RXDONE, mask);
	FUNC2(rt2x00dev, CSR8, reg);

	FUNC4(&rt2x00dev->irqmask_lock, flags);

	if (state == STATE_RADIO_IRQ_OFF) {
		/*
		 * Ensure that all tasklets are finished.
		 */
		FUNC5(&rt2x00dev->txstatus_tasklet);
		FUNC5(&rt2x00dev->rxdone_tasklet);
		FUNC5(&rt2x00dev->tbtt_tasklet);
	}
}
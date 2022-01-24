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
struct ipw_hardware {scalar_t__ hw_version; int /*<<< orphan*/  lock; TYPE_1__* memregs_CCR; scalar_t__ base_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_config_and_status; } ;

/* Variables and functions */
 int DCR_RXRESET ; 
 int DCR_TXRESET ; 
 scalar_t__ HW_VERSION_1 ; 
 int IER_RXENABLED ; 
 int IER_TXENABLED ; 
 scalar_t__ IODCR ; 
 scalar_t__ IOIER ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ipw_hardware *hw)
{
	unsigned long flags;

	FUNC2(&hw->lock, flags);
	if (hw->hw_version == HW_VERSION_1) {
		/* Reset RX FIFO */
		FUNC0(DCR_RXRESET, hw->base_port + IODCR);
		/* SB: Reset TX FIFO */
		FUNC0(DCR_TXRESET, hw->base_port + IODCR);

		/* Enable TX and RX interrupts. */
		FUNC0(IER_TXENABLED | IER_RXENABLED, hw->base_port + IOIER);
	} else {
		/*
		 * Set INTRACK bit (bit 0), which means we must explicitly
		 * acknowledge interrupts by clearing bit 2 of reg_config_and_status.
		 */
		unsigned short csr = FUNC1(&hw->memregs_CCR->reg_config_and_status);

		csr |= 1;
		FUNC4(csr, &hw->memregs_CCR->reg_config_and_status);
	}
	FUNC3(&hw->lock, flags);
}
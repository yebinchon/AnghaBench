#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  domain; } ;
struct TYPE_4__ {int ngpio; TYPE_1__ irq; int /*<<< orphan*/  parent; } ;
struct mcp23s08 {int cached_gpio; int irq_rise; int irq_fall; int /*<<< orphan*/  lock; TYPE_2__ chip; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MCP_DEFVAL ; 
 int /*<<< orphan*/  MCP_GPIO ; 
 int /*<<< orphan*/  MCP_INTCAP ; 
 int /*<<< orphan*/  MCP_INTCON ; 
 int /*<<< orphan*/  MCP_INTF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct mcp23s08*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct mcp23s08 *mcp = data;
	int intcap, intcon, intf, i, gpio, gpio_orig, intcap_mask, defval;
	unsigned int child_irq;
	bool intf_set, intcap_changed, gpio_bit_changed,
		defval_changed, gpio_set;

	FUNC5(&mcp->lock);
	if (FUNC4(mcp, MCP_INTF, &intf))
		goto unlock;

	if (FUNC4(mcp, MCP_INTCAP, &intcap))
		goto unlock;

	if (FUNC4(mcp, MCP_INTCON, &intcon))
		goto unlock;

	if (FUNC4(mcp, MCP_DEFVAL, &defval))
		goto unlock;

	/* This clears the interrupt(configurable on S18) */
	if (FUNC4(mcp, MCP_GPIO, &gpio))
		goto unlock;

	gpio_orig = mcp->cached_gpio;
	mcp->cached_gpio = gpio;
	FUNC6(&mcp->lock);

	if (intf == 0) {
		/* There is no interrupt pending */
		return IRQ_HANDLED;
	}

	FUNC1(mcp->chip.parent,
		"intcap 0x%04X intf 0x%04X gpio_orig 0x%04X gpio 0x%04X\n",
		intcap, intf, gpio_orig, gpio);

	for (i = 0; i < mcp->chip.ngpio; i++) {
		/* We must check all of the inputs on the chip,
		 * otherwise we may not notice a change on >=2 pins.
		 *
		 * On at least the mcp23s17, INTCAP is only updated
		 * one byte at a time(INTCAPA and INTCAPB are
		 * not written to at the same time - only on a per-bank
		 * basis).
		 *
		 * INTF only contains the single bit that caused the
		 * interrupt per-bank.  On the mcp23s17, there is
		 * INTFA and INTFB.  If two pins are changed on the A
		 * side at the same time, INTF will only have one bit
		 * set.  If one pin on the A side and one pin on the B
		 * side are changed at the same time, INTF will have
		 * two bits set.  Thus, INTF can't be the only check
		 * to see if the input has changed.
		 */

		intf_set = intf & FUNC0(i);
		if (i < 8 && intf_set)
			intcap_mask = 0x00FF;
		else if (i >= 8 && intf_set)
			intcap_mask = 0xFF00;
		else
			intcap_mask = 0x00;

		intcap_changed = (intcap_mask &
			(intcap & FUNC0(i))) !=
			(intcap_mask & (FUNC0(i) & gpio_orig));
		gpio_set = FUNC0(i) & gpio;
		gpio_bit_changed = (FUNC0(i) & gpio_orig) !=
			(FUNC0(i) & gpio);
		defval_changed = (FUNC0(i) & intcon) &&
			((FUNC0(i) & gpio) !=
			(FUNC0(i) & defval));

		if (((gpio_bit_changed || intcap_changed) &&
			(FUNC0(i) & mcp->irq_rise) && gpio_set) ||
		    ((gpio_bit_changed || intcap_changed) &&
			(FUNC0(i) & mcp->irq_fall) && !gpio_set) ||
		    defval_changed) {
			child_irq = FUNC3(mcp->chip.irq.domain, i);
			FUNC2(child_irq);
		}
	}

	return IRQ_HANDLED;

unlock:
	FUNC6(&mcp->lock);
	return IRQ_HANDLED;
}
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
struct max310x_port {TYPE_1__* devtype; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAX310X_GLOBALIRQ_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct max310x_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct max310x_port *s = (struct max310x_port *)dev_id;
	bool handled = false;

	if (s->devtype->nr > 1) {
		do {
			unsigned int val = ~0;

			FUNC1(FUNC4(s->regmap,
						 MAX310X_GLOBALIRQ_REG, &val));
			val = ((1 << s->devtype->nr) - 1) & ~val;
			if (!val)
				break;
			if (FUNC3(s, FUNC2(val) - 1) == IRQ_HANDLED)
				handled = true;
		} while (1);
	} else {
		if (FUNC3(s, 0) == IRQ_HANDLED)
			handled = true;
	}

	return FUNC0(handled);
}
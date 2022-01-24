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

/* Variables and functions */
 int /*<<< orphan*/  DRIVER ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isr ; 
 int /*<<< orphan*/  ixp_clock ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int gpio)
{
	int irq;
	int err;

	err = FUNC1(gpio, "ixp4-ptp");
	if (err)
		return err;

	err = FUNC0(gpio);
	if (err)
		return err;

	irq = FUNC2(gpio);
	if (irq < 0)
		return irq;

	err = FUNC3(irq, IRQF_TRIGGER_FALLING);
	if (err) {
		FUNC4("cannot set trigger type for irq %d\n", irq);
		return err;
	}

	err = FUNC5(irq, isr, 0, DRIVER, &ixp_clock);
	if (err) {
		FUNC4("request_irq failed for irq %d\n", irq);
		return err;
	}

	return irq;
}
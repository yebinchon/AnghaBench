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
struct v3_pci {int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int INTEGRATOR_SC_PCI_ENABLE ; 
 unsigned int INTEGRATOR_SC_PCI_INTCLR ; 
 int /*<<< orphan*/  INTEGRATOR_SC_PCI_OFFSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ V3_LB_IO_BASE ; 
 scalar_t__ V3_MAIL_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct v3_pci *v3)
{
	unsigned int val;

	v3->map =
		FUNC7("arm,integrator-ap-syscon");
	if (FUNC0(v3->map)) {
		FUNC1(v3->dev, "no syscon\n");
		return -ENODEV;
	}

	FUNC5(v3->map, INTEGRATOR_SC_PCI_OFFSET, &val);
	/* Take the PCI bridge out of reset, clear IRQs */
	FUNC6(v3->map, INTEGRATOR_SC_PCI_OFFSET,
		     INTEGRATOR_SC_PCI_ENABLE |
		     INTEGRATOR_SC_PCI_INTCLR);

	if (!(val & INTEGRATOR_SC_PCI_ENABLE)) {
		/* If we were in reset we need to sleep a bit */
		FUNC3(230);

		/* Set the physical base for the controller itself */
		FUNC9(0x6200, v3->base + V3_LB_IO_BASE);

		/* Wait for the mailbox to settle after reset */
		do {
			FUNC8(0xaa, v3->base + V3_MAIL_DATA);
			FUNC8(0x55, v3->base + V3_MAIL_DATA + 4);
		} while (FUNC4(v3->base + V3_MAIL_DATA) != 0xaa &&
			 FUNC4(v3->base + V3_MAIL_DATA) != 0x55);
	}

	FUNC2(v3->dev, "initialized PCI V3 Integrator/AP integration\n");

	return 0;
}
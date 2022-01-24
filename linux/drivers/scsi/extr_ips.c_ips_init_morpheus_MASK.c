#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int requires_esl; scalar_t__ mem_ptr; int /*<<< orphan*/  pcidev; } ;
typedef  TYPE_1__ ips_ha_t ;

/* Variables and functions */
 int IPS_BIT_I960_MSG0I ; 
 int IPS_BIT_I960_MSG1I ; 
 int IPS_GOOD_POST_STATUS ; 
 int /*<<< orphan*/  IPS_ONE_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ IPS_REG_I2O_HIR ; 
 scalar_t__ IPS_REG_I960_MSG0 ; 
 scalar_t__ IPS_REG_I960_MSG1 ; 
 scalar_t__ IPS_REG_I960_OIMR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(ips_ha_t * ha)
{
	uint32_t Post;
	uint32_t Config;
	uint32_t Isr;
	uint32_t Oimr;
	int i;

	FUNC2("ips_init_morpheus", 1);

	/* Wait up to 45 secs for Post */
	for (i = 0; i < 45; i++) {
		Isr = FUNC3(ha->mem_ptr + IPS_REG_I2O_HIR);

		if (Isr & IPS_BIT_I960_MSG0I)
			break;

		/* Delay for 1 Second */
		FUNC1(IPS_ONE_SEC);
	}

	if (i >= 45) {
		/* error occurred */
		FUNC0(KERN_WARNING, ha->pcidev,
			   "timeout waiting for post.\n");

		return (0);
	}

	Post = FUNC3(ha->mem_ptr + IPS_REG_I960_MSG0);

	if (Post == 0x4F00) {	/* If Flashing the Battery PIC         */
		FUNC0(KERN_WARNING, ha->pcidev,
			   "Flashing Battery PIC, Please wait ...\n");

		/* Clear the interrupt bit */
		Isr = (uint32_t) IPS_BIT_I960_MSG0I;
		FUNC4(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);

		for (i = 0; i < 120; i++) {	/*    Wait Up to 2 Min. for Completion */
			Post = FUNC3(ha->mem_ptr + IPS_REG_I960_MSG0);
			if (Post != 0x4F00)
				break;
			/* Delay for 1 Second */
			FUNC1(IPS_ONE_SEC);
		}

		if (i >= 120) {
			FUNC0(KERN_WARNING, ha->pcidev,
				   "timeout waiting for Battery PIC Flash\n");
			return (0);
		}

	}

	/* Clear the interrupt bit */
	Isr = (uint32_t) IPS_BIT_I960_MSG0I;
	FUNC4(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);

	if (Post < (IPS_GOOD_POST_STATUS << 8)) {
		FUNC0(KERN_WARNING, ha->pcidev,
			   "reset controller fails (post status %x).\n", Post);

		return (0);
	}

	/* Wait up to 240 secs for config bytes */
	for (i = 0; i < 240; i++) {
		Isr = FUNC3(ha->mem_ptr + IPS_REG_I2O_HIR);

		if (Isr & IPS_BIT_I960_MSG1I)
			break;

		/* Delay for 1 Second */
		FUNC1(IPS_ONE_SEC);
	}

	if (i >= 240) {
		/* error occurred */
		FUNC0(KERN_WARNING, ha->pcidev,
			   "timeout waiting for config.\n");

		return (0);
	}

	Config = FUNC3(ha->mem_ptr + IPS_REG_I960_MSG1);

	/* Clear interrupt bit */
	Isr = (uint32_t) IPS_BIT_I960_MSG1I;
	FUNC4(Isr, ha->mem_ptr + IPS_REG_I2O_HIR);

	/* Turn on the interrupts */
	Oimr = FUNC3(ha->mem_ptr + IPS_REG_I960_OIMR);
	Oimr &= ~0x8;
	FUNC4(Oimr, ha->mem_ptr + IPS_REG_I960_OIMR);

	/* if we get here then everything went OK */

	/* Since we did a RESET, an EraseStripeLock may be needed */
	if (Post == 0xEF10) {
		if ((Config == 0x000F) || (Config == 0x0009))
			ha->requires_esl = 1;
	}

	return (1);
}
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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PIIX4_FUNC3IO_PMCNTRL ; 
 int PIIX4_FUNC3IO_PMCNTRL_SUS_EN ; 
 int PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF ; 
 scalar_t__ PIIX4_FUNC3IO_PMSTS ; 
 int PIIX4_FUNC3IO_PMSTS_PWRBTN_STS ; 
 int /*<<< orphan*/  PIIX4_SUSPEND_MAGIC ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ io_offset ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* pm_dev ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
	int spec_devid;
	u16 sts;

	/* Ensure the power button status is clear */
	while (1) {
		sts = FUNC2(io_offset + PIIX4_FUNC3IO_PMSTS);
		if (!(sts & PIIX4_FUNC3IO_PMSTS_PWRBTN_STS))
			break;
		FUNC4(sts, io_offset + PIIX4_FUNC3IO_PMSTS);
	}

	/* Enable entry to suspend */
	FUNC4(PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF | PIIX4_FUNC3IO_PMCNTRL_SUS_EN,
	     io_offset + PIIX4_FUNC3IO_PMCNTRL);

	/* If the special cycle occurs too soon this doesn't work... */
	FUNC3(10);

	/*
	 * The PIIX4 will enter the suspend state only after seeing a special
	 * cycle with the correct magic data on the PCI bus. Generate that
	 * cycle now.
	 */
	spec_devid = FUNC1(0, FUNC0(0x1f, 0x7));
	FUNC5(pm_dev->bus, spec_devid, 0,
				   PIIX4_SUSPEND_MAGIC);

	/* Give the system some time to power down, then error */
	FUNC3(1000);
	FUNC6("Unable to poweroff system\n");
}